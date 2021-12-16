import 'dart:math';

import 'package:flutter/material.dart';
import 'package:plant_master_demo/Data Source/quiz_brain.dart';
import 'package:plant_master_demo/Screens/quizPageFrame.dart';
import 'package:plant_master_demo/Theme/colors.dart';
//import 'courses_info.dart';

QuizBrain quizBrain = QuizBrain();





class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors().background,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}





class _QuizPageState extends State<QuizPage> {
  final myController = TextEditingController();
  //final _focusController = FocusNode();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }



  List<Icon> scoreKeeper = [];
  bool _isLoading = true;



  @override
  void initState(){
    super.initState();
    getQuestionFinal();
  }



  Future<void> getQuestionFinal() async {

    String subject = 'nsmq';
    if (QuizPageFrame.subject == "trees"){
      subject = 'trees';
    }
    else if (QuizPageFrame.subject == "flowers"){
      subject = 'flowers';
    }
    // // else if (CourseInfoPage.subject == "Science"){
    // //   subject = 'science';
    // // }
    // // else if(CourseInfoPage.subject == "Social Studies"){
    // //   subject = 'social_studies';
    // // }
    else{
      var list = ['flowers','trees'];
      subject = list[Random().nextInt(list.length)];
    }
    quizBrain.questionBank = await quizBrain.getQuestions(subject);
    setState(() {
      _isLoading = false;
    });
  }

// Restart Quiz
  void restart(){

  }

// Enables reviews to be redone
  void rewind(){
    quizBrain.reviewReset();
    _pushReview();
  }

// Checks reviews left in array

  void reviewCheck(){
    setState(() {
      if (quizBrain.isFinishedReview() == true){
        AlertDialog alert = AlertDialog(
          title: Text('Completed!'),
          content: Text('You are done reviewing'),
          actions: [
            // TextButton(onPressed: restart , child: Text('Retry')),
            // TextButton(onPressed: null , child: Text('Main Menu')),
            TextButton(onPressed: rewind , child: Text('Review Again')),
          ],
        );

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );
      }
      else{
        quizBrain.nextReviewQuestion();
        _pushReview();
      }
    });
  }

// Checks user answer against a given JSON answer
  void checkAnswer(String userPickedAnswer) {
    String correctAnswer = quizBrain.getCorrectAnswer();

    setState(() {

      String score_str = score.toString();
      String total = scoreKeeper.length.toString();

      if (quizBrain.isFinished() == true) {



        AlertDialog alert = AlertDialog(
          title: Text('Completed!'),
          content: Text('You are done with this quiz. You scored ${score_str}/${total}'),
          actions: [
            // TextButton(onPressed: restart , child: Text('Retry')),
            // TextButton(onPressed: null , child: Text('Main Menu')),
            TextButton(onPressed: _pushReview , child: Text('Review')),
          ],
        );

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );


        quizBrain.reset();


        scoreKeeper = [];
      }


      else {
        if (userPickedAnswer == correctAnswer) {
          score++;
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          quizBrain.addReview();
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }



// Review Screen
 void _pushReview() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ConstrainedBox(
              constraints: BoxConstraints(
                // maxHeight: 400,
                // maxWidth: 30,
              ),
              child: SizedBox(
                height: 400,
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 400,
                    ),
                    child: Image.network("${quizBrain.getReviewQuestionPicture()}")),
              )
          ),
      Padding(
        padding: EdgeInsets.all(5.0),
        child: Center(
          child: Text(
            quizBrain.getReviewQuestionName(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.red,
            ),
          ),
        ),
      ),
          //Spacer(flex: 1),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.green),
              child: Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //Next Question
                reviewCheck();
              },
            ),
          ),
          Spacer(),
      ],
      ),
    );
  })
  );
}

  bool isHintsSwitched = false;

  @override
  Widget build(BuildContext context) {

    return _isLoading
          ? const Center(child: CircularProgressIndicator()) : Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              // maxHeight: 400,
              // maxWidth: 30,
            ),
            child: SizedBox(
              height: 400,
              child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: 400,
                  ),
                  child: Image.network(quizBrain.getPicture())),
            )
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: isHintsSwitched==true ? Text(
                quizBrain.getQuestionName(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.green,
                )) : Text("",
                textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: 25.0,
                color: Colors.green,
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal:20.0),
            child: new Theme(
              data: new ThemeData(
                primaryColor: Colors.redAccent,
                primaryColorDark: Colors.green,
              ),
              child: TextField(
                cursorColor: Colors.green,
                //obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  labelText: 'name',
                  labelStyle: TextStyle(
                    color: Colors.green,
                  ),
                  focusColor: Colors.green,
                  fillColor: Colors.green,
                  filled: false,
                ),
                controller: myController,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.green),
              child: Text(
                'Submit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                checkAnswer(myController.text);
                myController.text = '';
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
            child: Stack(
              children: [
                // Center(
                //   child: isHintsSwitched==true ? Text(
                //       quizBrain.getQuestionName(),
                //       textAlign: TextAlign.center,
                //       style: TextStyle(
                //         fontSize: 25.0,
                //         color: Colors.green,
                //       )) : Text("",
                //       textAlign: TextAlign.center,
                //       style: TextStyle(
                //         fontSize: 25.0,
                //         color: Colors.green,
                //       )
                //   ),
                // ),
                Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 10),
                  //   child: SizedBox(
                  //     width: 270,
                  //     height: 40,
                  //     child: TextButton(
                  //       style: TextButton.styleFrom(backgroundColor: Colors.green),
                  //       child: Text(
                  //         'Submit',
                  //         style: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 20.0,
                  //         ),
                  //       ),
                  //       onPressed: () {
                  //         //The user picked true.
                  //         checkAnswer(myController.text);
                  //         myController.text = '';
                  //       },
                  //     ),
                  //   ),
                  // ),
                  isHintsSwitched==false ?
                    Text('Hints', style: TextStyle(color: Colors.grey)) :
                    Text('Hints', style: TextStyle(color: Colors.lightGreen)),
                  Switch(
                    value: isHintsSwitched,
                    onChanged: (value) {
                      setState(() {
                        isHintsSwitched = value;
                        print(isHintsSwitched);
                      });
                    },
                    activeTrackColor: Colors.lightGreenAccent,
                    activeColor: Colors.green,
                  ),
                ],
              ),
              ],
            ),
          ),
          Row(
            children: scoreKeeper,
          )
        ],
      );

  }
}


