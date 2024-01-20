import 'package:flutter/material.dart';
import 'package:zoofinity/globals.dart' as global;
import 'package:zoofinity/screens/quiz.dart';

import 'homePage.dart';

class QuizResult extends StatefulWidget {
  const QuizResult({super.key});

  @override
  State<QuizResult> createState() => _QuizResultState();
}

class _QuizResultState extends State<QuizResult> {
  
  void _resetVal(){
    global.questIncrement = 1;
    global.userScore = 0;
    global.questionIndex = 0;
    global.endOfQuiz = false;
  }

  String? messageFunc(){
    if(global.userScore == 3){ // score val must be equal to the length of question. 
      return "Congratulations, you perfect the quiz";
    }
    else if(global.userScore < 3 && global.userScore >= 1){ // score val must be a passing score. 
      return "Great! you passed the quiz";
    }

    return "You failed the exam, better luck next time.";
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack( 
          children: [
            Column(
              children: [
                Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(top: 25, left: 15),
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: IconButton(onPressed: (){
                              _resetVal(); // values result to default when navigates to home.
                              Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage(
                                    title: 'Home',
                                  )),
                        );
                            }, 
                            icon: Icon(Icons.arrow_back),
                            color: Colors.black,),
                          ),),
                      ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top:((MediaQuery.of(context).size.width * 0.8) / 1.2 )),
                    child: Text(
                      'Your Score is: ${global.userScore}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontFamily: 'Fredoka-One',
                        color: Color(0xFF345525)),),
                  ),
                ),
                // displays text message based on score. 
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, bottom: 50),
                    child: Text(
                      messageFunc() as String,
                      style: const TextStyle(
                        fontSize: 20,
                        fontFamily: 'Fredoka-One',
                        color: Color(0xFF345525)),),
                  ),
                ),

                Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(
                    top: ((MediaQuery.of(context).size.width * 0.5) / 2 ) * 1.3),
            child: SizedBox(
                height: 50,
                      width: 190,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF345525),
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () {
                          _resetVal();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QuizScreen()),
                          );
                        },
                        child: const Text(
                          "Take Quiz Again",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Fredoka-One'),
                        ),
                      ),
              ),
          ),
        )
              ],
            ),
          ],
        )),
    );
  }
}