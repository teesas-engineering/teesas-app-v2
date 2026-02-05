// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AssessmentStore on _AssessmentStore, Store {
  Computed<bool>? _$isLastQuestionComputed;

  @override
  bool get isLastQuestion => (_$isLastQuestionComputed ??= Computed<bool>(
    () => super.isLastQuestion,
    name: '_AssessmentStore.isLastQuestion',
  )).value;
  Computed<bool>? _$isFirstQuestionComputed;

  @override
  bool get isFirstQuestion => (_$isFirstQuestionComputed ??= Computed<bool>(
    () => super.isFirstQuestion,
    name: '_AssessmentStore.isFirstQuestion',
  )).value;

  late final _$currentQuestionIndexAtom = Atom(
    name: '_AssessmentStore.currentQuestionIndex',
    context: context,
  );

  @override
  int get currentQuestionIndex {
    _$currentQuestionIndexAtom.reportRead();
    return super.currentQuestionIndex;
  }

  @override
  set currentQuestionIndex(int value) {
    _$currentQuestionIndexAtom.reportWrite(
      value,
      super.currentQuestionIndex,
      () {
        super.currentQuestionIndex = value;
      },
    );
  }

  late final _$selectedOptionIndexAtom = Atom(
    name: '_AssessmentStore.selectedOptionIndex',
    context: context,
  );

  @override
  int? get selectedOptionIndex {
    _$selectedOptionIndexAtom.reportRead();
    return super.selectedOptionIndex;
  }

  @override
  set selectedOptionIndex(int? value) {
    _$selectedOptionIndexAtom.reportWrite(value, super.selectedOptionIndex, () {
      super.selectedOptionIndex = value;
    });
  }

  late final _$isAnswerSubmittedAtom = Atom(
    name: '_AssessmentStore.isAnswerSubmitted',
    context: context,
  );

  @override
  bool get isAnswerSubmitted {
    _$isAnswerSubmittedAtom.reportRead();
    return super.isAnswerSubmitted;
  }

  @override
  set isAnswerSubmitted(bool value) {
    _$isAnswerSubmittedAtom.reportWrite(value, super.isAnswerSubmitted, () {
      super.isAnswerSubmitted = value;
    });
  }

  late final _$correctOptionIndexAtom = Atom(
    name: '_AssessmentStore.correctOptionIndex',
    context: context,
  );

  @override
  int? get correctOptionIndex {
    _$correctOptionIndexAtom.reportRead();
    return super.correctOptionIndex;
  }

  @override
  set correctOptionIndex(int? value) {
    _$correctOptionIndexAtom.reportWrite(value, super.correctOptionIndex, () {
      super.correctOptionIndex = value;
    });
  }

  late final _$totalQuestionsAtom = Atom(
    name: '_AssessmentStore.totalQuestions',
    context: context,
  );

  @override
  int get totalQuestions {
    _$totalQuestionsAtom.reportRead();
    return super.totalQuestions;
  }

  @override
  set totalQuestions(int value) {
    _$totalQuestionsAtom.reportWrite(value, super.totalQuestions, () {
      super.totalQuestions = value;
    });
  }

  late final _$_AssessmentStoreActionController = ActionController(
    name: '_AssessmentStore',
    context: context,
  );

  @override
  void selectOption(int index) {
    final _$actionInfo = _$_AssessmentStoreActionController.startAction(
      name: '_AssessmentStore.selectOption',
    );
    try {
      return super.selectOption(index);
    } finally {
      _$_AssessmentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void submitAnswer() {
    final _$actionInfo = _$_AssessmentStoreActionController.startAction(
      name: '_AssessmentStore.submitAnswer',
    );
    try {
      return super.submitAnswer();
    } finally {
      _$_AssessmentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void nextQuestion() {
    final _$actionInfo = _$_AssessmentStoreActionController.startAction(
      name: '_AssessmentStore.nextQuestion',
    );
    try {
      return super.nextQuestion();
    } finally {
      _$_AssessmentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void previousQuestion() {
    final _$actionInfo = _$_AssessmentStoreActionController.startAction(
      name: '_AssessmentStore.previousQuestion',
    );
    try {
      return super.previousQuestion();
    } finally {
      _$_AssessmentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetQuestionState() {
    final _$actionInfo = _$_AssessmentStoreActionController.startAction(
      name: '_AssessmentStore.resetQuestionState',
    );
    try {
      return super.resetQuestionState();
    } finally {
      _$_AssessmentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentQuestionIndex: ${currentQuestionIndex},
selectedOptionIndex: ${selectedOptionIndex},
isAnswerSubmitted: ${isAnswerSubmitted},
correctOptionIndex: ${correctOptionIndex},
totalQuestions: ${totalQuestions},
isLastQuestion: ${isLastQuestion},
isFirstQuestion: ${isFirstQuestion}
    ''';
  }
}
