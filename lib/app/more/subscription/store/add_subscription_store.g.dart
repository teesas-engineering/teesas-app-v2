// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_subscription_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddSubscriptionStore on _AddSubscriptionStore, Store {
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
selectedPlanIds: ${selectedPlanIds}
    ''';
  }
}
