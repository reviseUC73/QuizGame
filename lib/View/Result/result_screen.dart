import 'package:adv_basics/Data/question_data.dart';
import 'package:adv_basics/View/Result/question_summary.dart';
import 'package:adv_basics/View/Result/question_summary_sol/questions_summary_sol.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  final List<String> chosenAnswer;
  final void Function() onRestart;

  const ResultScreen({
    super.key,
    required this.chosenAnswer,
    required this.onRestart,
  });

// Add To Gatter
  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswer[i],
      });
    }
    return summary;
  }

  // Change to Class Method
  //   List<Map<String, Object>> getSummaryData() {
  //   final List<Map<String, Object>> summary = [];
  //   for (var i = 0; i < chosenAnswer.length; i++) {
  //     summary.add({
  //       'question_index': i,
  //       'question': questions[i].text,
  //       'correct_answer': questions[i].answers[0],
  //       'user_answer': chosenAnswer[i],
  //     });
  //   }
  //   return summary;
  // }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;

    // final summaryData = getSummaryData();
    // final numTotalQuestions = questions.length;
    // final numCorrectQuestions = summaryData.where((data) {
    //   // same mapFilter
    //   return data['user_answer'] == data['correct_answer'];
    // }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            SizedBox(
              height: 30,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepPurpleAccent.shade100,
                  // shape: BoxShape.circle,
                ),
              ),
            ),
            QuestionsSummarySol(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(
                color: Colors.white,
                Icons.refresh,
                size: 20,
              ),
              label: const Text(
                'Restart Quiz!',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
