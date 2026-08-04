import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_text_field.dart';
import '../../admin/admin_shell.dart';
import '../../marketplace/domain/marketplace_product.dart';
import '../../marketplace/presentation/marketplace_search_screen.dart';
import '../data/imagekit_uploader.dart';
import '../data/packages_repository.dart';
import '../domain/package_models.dart';

@RoutePage()
class AdminPackageFormScreen extends ConsumerStatefulWidget {
  const AdminPackageFormScreen({super.key, this.packageId});

  final String? packageId;

  @override
  ConsumerState<AdminPackageFormScreen> createState() =>
      _AdminPackageFormScreenState();
}

class _AdminPackageFormScreenState
    extends ConsumerState<AdminPackageFormScreen> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _sortController = TextEditingController(text: '0');
  String? _coverUrl;
  bool _isPopular = false;
  bool _isActive = true;
  bool _loading = false;
  bool _saving = false;
  bool _uploading = false;
  final List<PackageItemInput> _items = [];
  final List<_SelectedLine> _lines = [];

  bool get _isEdit => widget.packageId != null;

  @override
  void initState() {
    super.initState();
    if (_isEdit) {
      _load();
    }
  }

  Future<void> _load() async {
    setState(() => _loading = true);
    try {
      final pkg =
          await ref.read(packagesRepositoryProvider).getById(widget.packageId!);
      _nameController.text = pkg.name;
      _descriptionController.text = pkg.description;
      _sortController.text = '${pkg.sortOrder}';
      _coverUrl = pkg.coverImageUrl;
      _isPopular = pkg.isPopular;
      _isActive = pkg.isActive;
      _items
        ..clear()
        ..addAll(
          pkg.items.map(
            (i) => PackageItemInput(
              productId: i.productId,
              quantity: i.quantity,
              sortOrder: i.sortOrder,
            ),
          ),
        );
      _lines
        ..clear()
        ..addAll(
          pkg.items.map(
            (i) => _SelectedLine(
              productId: i.productId,
              name: i.name,
              packageLabel: i.packageLabel,
              quantity: i.quantity,
            ),
          ),
        );
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e is ApiException ? e.message : e.toString()),
          ),
        );
      }
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _sortController.dispose();
    super.dispose();
  }

  Future<void> _pickCover() async {
    setState(() => _uploading = true);
    try {
      final url = await ref.read(imageKitUploaderProvider).pickAndUpload();
      if (url != null && mounted) setState(() => _coverUrl = url);
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e is ApiException
                ? e.message
                : 'Upload failed. Set ImageKit keys in backend .env',
          ),
        ),
      );
    } finally {
      if (mounted) setState(() => _uploading = false);
    }
  }

  Future<void> _addProduct() async {
    final product = await Navigator.of(context).push<MarketplaceProduct>(
      MaterialPageRoute(
        builder: (_) => MarketplaceSearchScreen(
          pickMode: true,
          onProductPicked: (p) => Navigator.of(context).pop(p),
        ),
      ),
    );
    if (product == null) return;
    if (_items.any((i) => i.productId == product.id)) return;
    setState(() {
      _lines.add(
        _SelectedLine(
          productId: product.id,
          name: product.name,
          packageLabel: product.packageLabel,
          quantity: 1,
        ),
      );
      _items.add(
        PackageItemInput(
          productId: product.id,
          quantity: 1,
          sortOrder: _items.length,
        ),
      );
    });
  }

  Future<void> _save() async {
    final name = _nameController.text.trim();
    if (name.isEmpty || _coverUrl == null || _items.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Name, cover, and items are required'),
        ),
      );
      return;
    }

    setState(() => _saving = true);
    try {
      final repo = ref.read(packagesRepositoryProvider);
      if (_isEdit) {
        await repo.adminUpdatePackage(
          widget.packageId!,
          UpdateAdminPackageRequest(
            name: name,
            description: _descriptionController.text.trim(),
            coverImageUrl: _coverUrl,
            isPopular: _isPopular,
            sortOrder: int.tryParse(_sortController.text.trim()) ?? 0,
            isActive: _isActive,
            items: _items,
          ),
        );
      } else {
        await repo.adminCreatePackage(
          CreateAdminPackageRequest(
            name: name,
            description: _descriptionController.text.trim(),
            coverImageUrl: _coverUrl!,
            isPopular: _isPopular,
            sortOrder: int.tryParse(_sortController.text.trim()) ?? 0,
            isActive: _isActive,
            items: _items,
          ),
        );
      }
      if (mounted) context.router.maybePop();
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e is ApiException ? e.message : e.toString()),
        ),
      );
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  Future<void> _deactivate() async {
    if (!_isEdit) return;
    setState(() => _saving = true);
    try {
      await ref
          .read(packagesRepositoryProvider)
          .adminDeactivatePackage(widget.packageId!);
      if (mounted) context.router.maybePop();
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e is ApiException ? e.message : e.toString()),
        ),
      );
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AdminScaffold(
      title: _isEdit ? 'Edit package' : 'New package',
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(AppSpacing.lg),
              children: [
                GestureDetector(
                  onTap: _uploading ? null : _pickCover,
                  child: Container(
                    height: 160,
                    decoration: BoxDecoration(
                      color: colorScheme.surfaceContainerHighest,
                      borderRadius: AppRadius.borderMd,
                      image: _coverUrl == null
                          ? null
                          : DecorationImage(
                              image: NetworkImage(_coverUrl!),
                              fit: BoxFit.cover,
                            ),
                    ),
                    child: _uploading
                        ? const Center(child: CircularProgressIndicator())
                        : _coverUrl == null
                            ? const Center(child: Text('Upload cover (ImageKit)'))
                            : null,
                  ),
                ),
                const SizedBox(height: AppSpacing.lg),
                AppTextField(
                  controller: _nameController,
                  label: 'Name',
                ),
                const SizedBox(height: AppSpacing.md),
                AppTextField(
                  controller: _descriptionController,
                  label: 'Description',
                  maxLines: 3,
                ),
                const SizedBox(height: AppSpacing.md),
                AppTextField(
                  controller: _sortController,
                  label: 'Sort order',
                  keyboardType: TextInputType.number,
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Popular'),
                  value: _isPopular,
                  onChanged: (v) => setState(() => _isPopular = v),
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Active'),
                  value: _isActive,
                  onChanged: (v) => setState(() => _isActive = v),
                ),
                Row(
                  children: [
                    Text(
                      'Items',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const Spacer(),
                    TextButton.icon(
                      onPressed: _addProduct,
                      icon: const Icon(Icons.add),
                      label: const Text('Add product'),
                    ),
                  ],
                ),
                for (var i = 0; i < _lines.length; i++)
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(_lines[i].name),
                    subtitle: Text(
                      '${_lines[i].packageLabel} · qty ${_lines[i].quantity}',
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete_outline),
                      onPressed: () {
                        setState(() {
                          _lines.removeAt(i);
                          _items.removeAt(i);
                        });
                      },
                    ),
                  ),
                const SizedBox(height: AppSpacing.xl),
                AppButton(
                  label: _saving ? 'Saving…' : 'Save package',
                  loading: _saving,
                  onPressed: _saving ? null : _save,
                ),
                if (_isEdit) ...[
                  const SizedBox(height: AppSpacing.md),
                  AppButton(
                    label: 'Deactivate',
                    variant: AppButtonVariant.destructive,
                    onPressed: _saving ? null : _deactivate,
                  ),
                ],
              ],
            ),
    );
  }
}

class _SelectedLine {
  _SelectedLine({
    required this.productId,
    required this.name,
    required this.packageLabel,
    required this.quantity,
  });

  final String productId;
  final String name;
  final String packageLabel;
  final int quantity;
}
