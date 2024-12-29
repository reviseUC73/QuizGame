import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const HomeWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(126, 255, 255, 255),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Text(
              "Learn Flutter the fun way !",
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                ),
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            style: ButtonStyle(
              foregroundColor: WidgetStateProperty.all(Colors.white),
              shape: WidgetStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
              ),
              side:  WidgetStateProperty.all(
                const BorderSide(color: Color.fromARGB(69, 158, 158, 158)),
              ),
              // shadowColor: WidgetStateProperty.all<Color>(const Color.fromARGB(255, 0, 0, 0)),
              // elevation: WidgetStateProperty.all(5),
            ),
            onPressed: onPressed,
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start Quiz',
            ),
          ),
        ],
      ),
    );
  }
}


// Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           // mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               "assets/images/quiz-logo.png",
//               width: 300,
//               color: const Color.fromARGB(126, 255, 255, 255),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 60),
//               child: Text(
//                 "Learn Flutter the fun way!",
//                 style: TextStyle(
//                   fontSize: 30,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 30),
//             OutlinedButton.icon(
//               style: ButtonStyle(
//                 foregroundColor: WidgetStateProperty.all(Colors.white),
//                 shape: WidgetStateProperty.all(
//                   RoundedRectangleBorder(
//                     borderRadius: BorderRadius.all(Radius.zero),
//                   ),
//                 ),
//                 side: WidgetStateProperty.all(
//                   BorderSide(color: const Color.fromARGB(69, 158, 158, 158)),
//                 ),
//                 // shadowColor: WidgetStateProperty.all<Color>(const Color.fromARGB(255, 0, 0, 0)),
//                 // elevation: WidgetStateProperty.all(5),
//               ),
//               onPressed: onPresseds,
//               icon: Icon(Icons.arrow_right_alt),
//               label: const Text(
//                 'Start Quiz',
//                 // style: TextStyle(fontSize: 15, color: Colors.white),
//               ),
//             ),
//           ],
//         ),
//       )