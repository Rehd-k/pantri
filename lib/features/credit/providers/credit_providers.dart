import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../data/credit_repository.dart';
import '../domain/credit_account.dart';
import '../domain/ledger_entry.dart';

const _ledgerPageSize = 20;

final creditAccountProvider =
    FutureProvider.autoDispose<CreditAccount>((ref) async {
  return ref.watch(creditRepositoryProvider).getCreditAccount();
});

sealed class LedgerState {
  const LedgerState();
}

class LedgerInitial extends LedgerState {
  const LedgerInitial();
}

class LedgerLoading extends LedgerState {
  const LedgerLoading({this.previous});

  final LedgerLoaded? previous;
}

class LedgerLoaded extends LedgerState {
  const LedgerLoaded({
    required this.entries,
    required this.hasMore,
    this.loadingMore = false,
  });

  final List<LedgerEntry> entries;
  final bool hasMore;
  final bool loadingMore;

  LedgerLoaded copyWith({
    List<LedgerEntry>? entries,
    bool? hasMore,
    bool? loadingMore,
  }) {
    return LedgerLoaded(
      entries: entries ?? this.entries,
      hasMore: hasMore ?? this.hasMore,
      loadingMore: loadingMore ?? this.loadingMore,
    );
  }
}

class LedgerError extends LedgerState {
  const LedgerError(this.message, {this.previous});

  final String message;
  final LedgerLoaded? previous;
}

final ledgerNotifierProvider =
    NotifierProvider.autoDispose<LedgerNotifier, LedgerState>(
  LedgerNotifier.new,
);

class LedgerNotifier extends Notifier<LedgerState> {
  @override
  LedgerState build() {
    Future.microtask(load);
    return const LedgerInitial();
  }

  CreditRepository get _repo => ref.read(creditRepositoryProvider);

  LedgerLoaded? get _currentLoaded {
    final s = state;
    return switch (s) {
      LedgerLoaded() => s,
      LedgerLoading(:final previous) => previous,
      LedgerError(:final previous) => previous,
      _ => null,
    };
  }

  Future<void> load() async {
    state = LedgerLoading(previous: _currentLoaded);
    try {
      final entries = await _repo.getLedger(limit: _ledgerPageSize);
      state = LedgerLoaded(
        entries: entries,
        hasMore: entries.length == _ledgerPageSize,
      );
    } catch (e) {
      state = LedgerError(
        e is ApiException ? e.message : e.toString(),
        previous: _currentLoaded,
      );
    }
  }

  Future<void> loadMore() async {
    final current = _currentLoaded;
    if (current == null || !current.hasMore || current.loadingMore) return;

    state = current.copyWith(loadingMore: true);
    try {
      final nextPage = await _repo.getLedger(
        limit: _ledgerPageSize,
        cursor: current.entries.last.id,
      );
      state = current.copyWith(
        entries: [...current.entries, ...nextPage],
        hasMore: nextPage.length == _ledgerPageSize,
        loadingMore: false,
      );
    } catch (_) {
      state = current.copyWith(loadingMore: false);
    }
  }
}
