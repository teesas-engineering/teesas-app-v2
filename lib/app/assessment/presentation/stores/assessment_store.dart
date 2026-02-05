import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'assessment_store.g.dart';

@injectable
class AssessmentStore = _AssessmentStore with _$AssessmentStore;

abstract class _AssessmentStore with Store {
  @observable
  int currentQuestionIndex = 0; // 0-indexed

  @observable
  int? selectedOptionIndex;

  @observable
  bool isAnswerSubmitted = false;

  @observable
  int? correctOptionIndex;

  @observable
  int totalQuestions = 5;

  // Dummy data
  final String questionText =
      'Choose the option that has the same consonant as the one represented by the letter(s) Underlined below';
  final List<String> options = [
    'Vegetable',
    'Elephant',
    'Elephant',
    'Elephant',
  ];

  @computed
  bool get isLastQuestion => currentQuestionIndex == totalQuestions - 1;

  @computed
  bool get isFirstQuestion => currentQuestionIndex == 0;

  @action
  void selectOption(int index) {
    if (isAnswerSubmitted) return;
    selectedOptionIndex = index;
  }

  @action
  void submitAnswer() {
    if (selectedOptionIndex == null) return;
    isAnswerSubmitted = true;
    correctOptionIndex = 0; // Assume first option is correct for demo
  }

  @action
  void nextQuestion() {
    if (currentQuestionIndex < totalQuestions - 1) {
      currentQuestionIndex++;
      resetQuestionState();
    }
  }

  @action
  void previousQuestion() {
    if (currentQuestionIndex > 0) {
      currentQuestionIndex--;
      resetQuestionState();
    }
  }

  @action
  void resetQuestionState() {
    selectedOptionIndex = null;
    isAnswerSubmitted = false;
    correctOptionIndex = null;
  }
}
