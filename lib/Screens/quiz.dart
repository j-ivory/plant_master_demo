import 'dart:math';

import 'package:flutter/material.dart';
import 'package:plant_master_demo/Data Source/quiz_brain.dart';
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

    // String subject = 'nsmq';
    // if (CourseInfoPage.subject == "Mathematics"){
    //   subject = 'math';
    // }
    // else if (CourseInfoPage.subject == "Science"){
    //   subject = 'science';
    // }
    // else if(CourseInfoPage.subject == "Social Studies"){
    //   subject = 'social_studies';
    // }
    // else{
    //   var list = ['math','science','social_studies'];
    //   subject = list[Random().nextInt(list.length)];
    // }


    quizBrain.questionBank = await quizBrain.getQuestions('trees');
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
        Expanded(
        flex: 5,
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Center(
            child: Text(
              quizBrain.getReviewQuestionName(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Center(
                child: Text(
                  quizBrain.getReviewQuestionPicture()!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
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
          ),
      ],
      ),
    );
  })
  );
}



  @override
  Widget build(BuildContext context) {
    return _isLoading
          ? const Center(child: CircularProgressIndicator()) : Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.network(quizBrain.getPicture()),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionName(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.green,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              //obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'name',
                focusColor: Colors.green,
              ),
              controller: myController,
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
          Row(
            children: scoreKeeper,
          )
        ],
      );

  }
}


