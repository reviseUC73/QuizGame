import 'package:adv_basics/View/Result/question_summary_sol/summary_item.dart';
import 'package:flutter/material.dart';

class QuestionsSummarySol extends StatelessWidget {
  const QuestionsSummarySol(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return SummaryItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}