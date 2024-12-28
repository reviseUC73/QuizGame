import 'package:adv_basics/View/Home/home_screen.dart';
import 'package:adv_basics/View/Question/question_screen.dart';
import 'package:flutter/material.dart';

// Flutter creates Quiz object (StatefulWidget) #0
class Quiz1 extends StatefulWidget {
  const Quiz1({super.key});

  // create state -> obj of class #1
  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz1> {
  // Widget? activeScreen;
  Widget? activeScreen;

// call initState #2
  @override
  void initState() {
    super.initState();
    activeScreen = HomeScreen(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

// build # 3
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 216, 164, 164),
                const Color.fromARGB(255, 160, 133, 214),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}



// ลำดับการทำงานใน Flutter
// 1. Flutter สร้างอ็อบเจ็กต์ Quiz 
//  -> (StatefulWidget).
// 2. Flutter เรียก createState() 
//  -> เพื่อสร้าง _QuizState.
// 3. _QuizState.initState() 
//  -> ถูกเรียกเพื่อกำหนดค่าเริ่มต้น (activeScreen = HomeScreen(switchScreen)).
// 4. Flutter เรียก build() 
//  -> เพื่อสร้าง UI.
// 5. เมื่อ switchScreen ถูกเรียก: 
//  -> setState ทำให้ Flutter เรียก build() ใหม่เพื่ออัปเดตหน้าจอ.

//ลำดับการทำงานใน Swift (UIKit)
// 1. สร้างอ็อบเจ็กต์ QuizViewController (UIViewController)
// -> init(nibName:bundle:) หรือ init() ถูกเรียก.
// 2. โหลด View
// -> loadView() (ถ้าสร้าง view ด้วยโค้ด) หรือโหลดจาก Storyboard.
// 3. กำหนดค่าเริ่มต้น
// -> viewDidLoad() ถูกเรียก (กำหนดค่าเริ่มต้น เช่น activeScreen = HomeScreen).
// 4. แสดง UI
// -> viewWillAppear(_:) -> UI เตรียมแสดง.
// -> viewDidAppear(_:) -> UI แสดงผลสมบูรณ์.
// 5. เปลี่ยน State (เปลี่ยนหน้าจอ)
// -> เรียกฟังก์ชัน (e.g., switchToQuestionScreen)
// -> ลบ View เดิม (activeScreen) และเพิ่ม View ใหม่.
// -> UI ถูกอัปเดตทันที.