import 'package:flutter/material.dart';
import 'package:plant_master_demo/Screens/quiz.dart';
import 'package:plant_master_demo/Theme/colors.dart';



class QuizPageFrame extends StatelessWidget {
  static String subject = '';
  static const String routeName = "/quizPageFrame";
  QuizPageFrame({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final receivedQuizSubject =
    ModalRoute.of(context)!.settings.arguments as String;
    subject = receivedQuizSubject;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors().background,
          // title: Text(
          //   "$receivedQuizSubject Quiz",
          //   style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 50 ),
          // ),
          title: RichText(
            text: TextSpan(
              //text: '',
              // style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(text: "$receivedQuizSubject", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 45 )),
                TextSpan(text: ' Quiz', style: TextStyle(fontSize: 45, color: Colors.black)),
              ],
            ),
          ),
        ),
        body: Quiz()

    );
  }
}