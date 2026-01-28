import 'package:flutter/material.dart';
import '../../../../common/dimens/app_dimens.dart';
import '../../data/dto/question_data.dart';
import '../../data/dto/section_data.dart';
import 'favorite_question_card.dart';
import 'favorite_section.dart';

class QuestionsTab extends StatelessWidget {
  const QuestionsTab({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data
    const sections = [
      SectionData(
        category: 'Primary',
        title: 'Grade 1',
        questionItems: [
          QuestionData(
            title: 'English Assessment Question 2',
            subject: 'English',
          ),
          QuestionData(
            title: 'English Assessment Question 3',
            subject: 'English',
          ),
          QuestionData(
            title: 'English Assessment Question 4',
            subject: 'English',
          ),
          QuestionData(
            title: 'English Assessment Question 5',
            subject: 'English',
          ),
          QuestionData(
            title: 'English Assessment Question 6',
            subject: 'English',
          ),
        ],
      ),
      SectionData(
        category: 'Leader In Me',
        title: '7 Habits of a Parent',
        questionItems: [
          QuestionData(
            title: 'Mathematics Assessment Question 1',
            subject: 'Mathematics',
          ),
          QuestionData(
            title: 'Mathematics Assessment Question 2',
            subject: 'Mathematics',
          ),
          QuestionData(
            title: 'Mathematics Assessment Question 3',
            subject: 'Mathematics',
          ),
        ],
      ),
    ];

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: Dimens.pagePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...sections.map(
            (section) => FavoriteSection(
              category: section.category,
              title: section.title,
              child: Column(
                children: [
                  ...section.questionItems!.map(
                        (item) => FavoriteQuestionCard(
                          title: item.title,
                          subject: item.subject,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
