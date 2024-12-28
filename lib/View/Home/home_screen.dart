import 'package:adv_basics/View/Home/home_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return HomeWidget(
      onPressed: startQuiz,
    );
  }



























  // @override
  // Widget build(context) {
  //   return Center(
  //     child: Column(
  //       mainAxisSize: MainAxisSize.min,
  //       children: [
  //         Image.asset(
  //           'assets/images/quiz-logo.png',
  //           width: 300,
  //         ),
  //         const SizedBox(height: 80),
  //         const Text(
  //           'Learn Flutter the fun way!',
  //           style: TextStyle(
  //             color: Color.fromARGB(255, 237, 223, 252),
  //             fontSize: 24,
  //           ),
  //         ),
  //         const SizedBox(height: 30),
  //         OutlinedButton(
  //           onPressed: () {},
  //           style: OutlinedButton.styleFrom(
  //             foregroundColor: Colors.white,
  //           ),
  //           child: const Text('Start Quiz'),
  //         )
  //       ],
  //     ),
  //   );
  // }
}
