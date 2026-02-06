// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_subscription_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddSubscriptionStore on _AddSubscriptionStore, Store {
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading => (_$isLoadingComputed ??= Computed<bool>(
    () => super.isLoading,
    name: '_AddSubscriptionStore.isLoading',
  )).value;

  late final _$statusAtom = Atom(
    name: '_AddSubscriptionStore.status',
    context: context,
  );

  @override
  Status get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(Status value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  late final _$errorMessageAtom = Atom(
    name: '_AddSubscriptionStore.errorMessage',
    context: context,
  );

  @override
  String? get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String? value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$selectedPlanIdsAtom = Atom(
    name: '_AddSubscriptionStore.selectedPlanIds',
    context: context,
  );

  @override
  ObservableMap<String, String> get selectedPlanIds {
    _$selectedPlanIdsAtom.reportRead();
    return super.selectedPlanIds;
  }

  @override
  set selectedPlanIds(ObservableMap<String, String> value) {
    _$selectedPlanIdsAtom.reportWrite(value, super.selectedPlanIds, () {
      super.selectedPlanIds = value;
    });
  }

  late final _$groupsAtom = Atom(
    name: '_AddSubscriptionStore.groups',
    context: context,
  );

  @override
  ObservableList<SubscriptionGroup> get groups {
    _$groupsAtom.reportRead();
    return super.groups;
  }

  @override
  set groups(ObservableList<SubscriptionGroup> value) {
    _$groupsAtom.reportWrite(value, super.groups, () {
      super.groups = value;
    });
  }

  late final _$fetchSubscriptionsAsyncAction = AsyncAction(
    '_AddSubscriptionStore.fetchSubscriptions',
    context: context,
  );

  @override
  Future<void> fetchSubscriptions() {
    return _$fetchSubscriptionsAsyncAction.run(
      () => super.fetchSubscriptions(),
    );
  }

  late final _$_AddSubscriptionStoreActionController = ActionController(
    name: '_AddSubscriptionStore',
    context: context,
  );

  @override
  void selectPlan(String groupId, String planId) {
    final _$actionInfo = _$_AddSubscriptionStoreActionController.startAction(
      name: '_AddSubscriptionStore.selectPlan',
    );
    try {
      return super.selectPlan(groupId, planId);
    } finally {
      _$_AddSubscriptionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
status: ${status},
errorMessage: ${errorMessage},
selectedPlanIds: ${selectedPlanIds},
groups: ${groups},
isLoading: ${isLoading}
    ''';
  }
}
