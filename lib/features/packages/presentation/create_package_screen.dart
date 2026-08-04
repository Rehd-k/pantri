import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../../marketplace/domain/marketplace_product.dart';
import '../../marketplace/presentation/marketplace_search_screen.dart';
import '../data/imagekit_uploader.dart';
import '../data/packages_repository.dart';
import '../domain/package_models.dart';
import '../providers/packages_providers.dart';
import 'package_details_screen.dart';

class CreatePackageScreen extends ConsumerStatefulWidget {
  const CreatePackageScreen({super.key});

  @override
  ConsumerState<CreatePackageScreen> createState() =>
      _CreatePackageScreenState();
}

class _CreatePackageScreenState extends ConsumerState<CreatePackageScreen> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  String _visibility = 'PUBLIC';
  String? _coverUrl;
  final List<PackageItemInput> _items = [];
  final List<MarketplaceProduct> _selectedProducts = [];
  bool _uploading = false;
  bool _saving = false;

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _pickCover() async {
    setState(() => _uploading = true);
    try {
      final url = await ref.read(imageKitUploaderProvider).pickAndUpload();
      if (url != null && mounted) {
        setState(() => _coverUrl = url);
      }
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e is ApiException
                ? e.message
                : 'Upload failed. Ensure ImageKit env keys are set.',
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
      _selectedProducts.add(product);
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
          content: Text('Name, cover image, and at least one item are required'),
        ),
      );
      return;
    }

    setState(() => _saving = true);
    try {
      final created =
          await ref.read(packagesRepositoryProvider).createCommunity(
                CreateCommunityPackageRequest(
                  name: name,
                  description: _descriptionController.text.trim(),
                  coverImageUrl: _coverUrl!,
                  visibility: _visibility,
                  items: _items,
                ),
              );
      ref.invalidate(communityPackagesProvider);
      ref.invalidate(minePackagesProvider);
      if (!mounted) return;

      await Share.share(
        '${created.name}\n${created.description}\n${created.shareUrl}\n${created.shareBannerUrl}',
      );

      if (!mounted) return;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute<void>(
          builder: (_) => PackageDetailsScreen(packageId: created.id),
        ),
      );
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

    return Scaffold(
      appBar: AppBar(title: const Text('Create package')),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        children: [
          GestureDetector(
            onTap: _uploading ? null : _pickCover,
            child: Container(
              height: 180,
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest,
                borderRadius: AppRadius.borderLg,
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
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_a_photo_outlined,
                              color: colorScheme.onSurfaceVariant,
                            ),
                            const SizedBox(height: AppSpacing.sm),
                            Text(
                              'Upload cover (ImageKit)',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: colorScheme.onSurfaceVariant,
                                  ),
                            ),
                          ],
                        )
                      : Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(AppSpacing.sm),
                            child: Chip(
                              label: const Text('Change'),
                              avatar: const Icon(Icons.edit, size: 16),
                            ),
                          ),
                        ),
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              labelText: 'Package name',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          TextField(
            controller: _descriptionController,
            maxLines: 3,
            decoration: const InputDecoration(
              labelText: 'Description',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          DropdownButtonFormField<String>(
            initialValue: _visibility,
            decoration: const InputDecoration(
              labelText: 'Visibility',
              border: OutlineInputBorder(),
            ),
            items: const [
              DropdownMenuItem(value: 'PRIVATE', child: Text('Private')),
              DropdownMenuItem(
                value: 'UNLISTED',
                child: Text('Link only (unlisted)'),
              ),
              DropdownMenuItem(value: 'PUBLIC', child: Text('Public')),
            ],
            onChanged: (v) {
              if (v != null) setState(() => _visibility = v);
            },
          ),
          const SizedBox(height: AppSpacing.xl),
          Row(
            children: [
              Text(
                'Items',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              TextButton.icon(
                onPressed: _addProduct,
                icon: const Icon(Icons.add),
                label: const Text('Add'),
              ),
            ],
          ),
          for (var i = 0; i < _selectedProducts.length; i++)
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(_selectedProducts[i].name),
              subtitle: Text(_selectedProducts[i].packageLabel),
              trailing: IconButton(
                icon: const Icon(Icons.delete_outline),
                onPressed: () {
                  setState(() {
                    _selectedProducts.removeAt(i);
                    _items.removeAt(i);
                  });
                },
              ),
            ),
          const SizedBox(height: AppSpacing.xl),
          AppButton(
            label: _saving ? 'Saving…' : 'Create & share',
            loading: _saving,
            onPressed: _saving ? null : _save,
          ),
        ],
      ),
    );
  }
}
