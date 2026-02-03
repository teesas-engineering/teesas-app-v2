// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SubscriptionStore on _SubscriptionStore, Store {
  Computed<bool>? _$hasActiveSubscriptionComputed;

  @override
  bool get hasActiveSubscription =>
      (_$hasActiveSubscriptionComputed ??= Computed<bool>(
        () => super.hasActiveSubscription,
        name: '_SubscriptionStore.hasActiveSubscription',
      )).value;
  Computed<bool>? _$hasSubscriptionHistoryComputed;

  @override
  bool get hasSubscriptionHistory =>
      (_$hasSubscriptionHistoryComputed ??= Computed<bool>(
        () => super.hasSubscriptionHistory,
        name: '_SubscriptionStore.hasSubscriptionHistory',
      )).value;

  late final _$activeSubscriptionsAtom = Atom(
    name: '_SubscriptionStore.activeSubscriptions',
    context: context,
  );

  @override
  ObservableList<Subscription> get activeSubscriptions {
    _$activeSubscriptionsAtom.reportRead();
    return super.activeSubscriptions;
  }

  @override
  set activeSubscriptions(ObservableList<Subscription> value) {
    _$activeSubscriptionsAtom.reportWrite(value, super.activeSubscriptions, () {
      super.activeSubscriptions = value;
    });
  }

  late final _$subscriptionHistoryAtom = Atom(
    name: '_SubscriptionStore.subscriptionHistory',
    context: context,
  );

  @override
  ObservableList<Subscription> get subscriptionHistory {
    _$subscriptionHistoryAtom.reportRead();
    return super.subscriptionHistory;
  }

  @override
  set subscriptionHistory(ObservableList<Subscription> value) {
    _$subscriptionHistoryAtom.reportWrite(value, super.subscriptionHistory, () {
      super.subscriptionHistory = value;
    });
  }

  late final _$addSubscriptionAsyncAction = AsyncAction(
    '_SubscriptionStore.addSubscription',
    context: context,
  );

  @override
  Future<void> addSubscription() {
    return _$addSubscriptionAsyncAction.run(() => super.addSubscription());
  }

  late final _$loadSubscriptionsAsyncAction = AsyncAction(
    '_SubscriptionStore.loadSubscriptions',
    context: context,
  );

  @override
  Future<void> loadSubscriptions() {
    return _$loadSubscriptionsAsyncAction.run(() => super.loadSubscriptions());
  }

  @override
  String toString() {
    return '''
activeSubscriptions: ${activeSubscriptions},
subscriptionHistory: ${subscriptionHistory},
hasActiveSubscription: ${hasActiveSubscription},
hasSubscriptionHistory: ${hasSubscriptionHistory}
    ''';
  }
}
