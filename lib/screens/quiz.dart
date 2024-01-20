import 'package:flutter/material.dart';
import 'package:zoofinity/screens/result.dart';
import 'package:zoofinity/globals.dart' as global;

import 'homePage.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Align(
          alignment: Alignment.center,
          child: Center(
            child: Text(
              'ZOOFINIQUIZ',
              style: TextStyle(
                  fontFamily: 'Fredoka-One',
                  fontSize: 50,
                  color: Color(0xFF345525)),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(
                top: (MediaQuery.of(context).size.width * 0.25)),
            child: SizedBox(
              height: 50,
              width: 190,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF345525),
                  shape: const StadiumBorder(),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const QuizScreen()),
                  );
                },
                child: const Text(
                  "Start Quiz",
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
    );
  }
}

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  _QuizScreen createState() => _QuizScreen();
}

class _QuizScreen extends State<QuizScreen> {
  bool answerWasSelected = false;
  bool correctAnswerSelected = false;

  void _questionAnswered(bool answerScore) {
    setState(() {
      // answer was selected
      answerWasSelected = true;
      // check if answer was correct
      if (answerScore) {
        global.userScore++;
        correctAnswerSelected = true;
      }

      //when the quiz ends
      if (global.questionIndex + 1 == _questions.length) {
        global.endOfQuiz = true;
      }
    });
  }

  void _getResult() {
    // _questionIndex = 0;
    global.questionIndex = 0;
    global.endOfQuiz = true;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const QuizResult()),
    );
  }

  void _nextQuestion() {
    setState(() {
      global.questionIndex++;
      global.questIncrement++;
      answerWasSelected = false;
      correctAnswerSelected = false;
    });

    // what happens at the end of the quiz
    if (global.questionIndex >= _questions.length) {
      _getResult();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                child: const DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color(0xff345524),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                        bottomRight: Radius.circular(35)),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width,
                child: const DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color(0xFF6B9D11),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                        bottomRight: Radius.circular(35)),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25, left: 15),
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: IconButton(
                            onPressed: () {
                              showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text(
                                    'Leaving Quiz',
                                    style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  content: const Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      'Leaving the quiz means you will fail the quiz. Are you sure you want to leave the quiz before attempting all the questions?',
                                      style: TextStyle(
                                          fontFamily: 'Raleway',
                                          fontSize: 16,
                                          color: Colors.black),
                                    ),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'Cancel'),
                                      child: const Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        global.questIncrement = 1;
                                        global.userScore = 0;
                                        global.questionIndex = 0;
                                        global.endOfQuiz = false;

                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const HomePage(
                                                    title: 'Home',
                                                  )),
                                        );
                                      },
                                      child: const Text('OK'),
                                    ),
                                  ],
                                ),
                              );
                            },
                            icon: const Icon(Icons.arrow_back),
                            color: const Color(0xff345524),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 25,
                            left: ((MediaQuery.of(context).size.width *
                                1.3 /
                                2))),
                        child: TextButton(
                          onPressed: () {
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text(
                                  'Skip Question',
                                  style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.bold),
                                ),
                                content: const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    'Are you sure you want to skip the question? Once you skipped you cannot go back to previous question.',
                                    style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 16,
                                        color: Colors.black),
                                  ),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'Cancel'),
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      _nextQuestion();
                                      Navigator.pop(context, 'Ok');
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                          },
                          child: const Text('Skip',
                              style: TextStyle(
                                fontSize: 23,
                                fontFamily: 'Fredoka-One',
                                color: Color(0xFF345525),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 35),
                    child: Text(
                      'Question # ${global.questIncrement.toString()} / ${_questions.length}',
                      style: const TextStyle(
                        fontSize: 23,
                        fontFamily: 'Fredoka-One',
                        color: Color(0xFF345525),
                      ),
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20, left: 30),
                    child: Text(
                      'Q. What is the animal in the photo?',
                      style: TextStyle(
                        fontSize: 23,
                        fontFamily: 'Raleway',
                        color: Color(0xffefece4),
                      ),
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                          width: (MediaQuery.of(context).size.width * 0.9),
                          height:
                              ((MediaQuery.of(context).size.width * 0.9) / 1.3),
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                                image: AssetImage(_questions[
                                        global.questionIndex]['image']
                                    as String), // Should be generated randomly (assign var to each image to generate)
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ),
                    if (answerWasSelected)
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Center(
                              child: correctAnswerSelected
                                  ? Icon(
                                      Icons.check_circle_outlined,
                                      size: 300,
                                      color: Colors.green.withOpacity(0.75),
                                    )
                                  : Icon(
                                      Icons.cancel,
                                      size: 300,
                                      color: Colors.red.withOpacity(0.75),
                                    )),
                        ),
                      )
                  ],
                ),
                Stack(
                  children: [
                    // generate list of choices buttons
                    Column(
                      children: [
                        ...(_questions[global.questionIndex]['answers']
                                as List<Map<String, dynamic>>)
                            .map(
                          (answer) => Choices(
                            answerText: answer[
                                'choices'], // load choices for each question.
                            icons1: answerWasSelected // indication if the answerSelected val is true.
                                ? answer['score']
                                    ? const Icon(
                                        Icons.check_circle,
                                        color: Color.fromARGB(255, 4, 88, 7),
                                      ) // icons pop choices button has been clicked.
                                    : const Icon(
                                        Icons.cancel,
                                        color: Colors.red,
                                      )
                                : const Icon(null),
                            answerTap: () {
                              // if answer was already selected then nothing happens onTap
                              if (answerWasSelected) {
                                return;
                              }
                              //answer is being selected
                              _questionAnswered(answer['score']);
                            },
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: SizedBox(
                                width:
                                    ((MediaQuery.of(context).size.width * 1.5) /
                                        2),
                                height:
                                    ((MediaQuery.of(context).size.width * 0.3) /
                                        2),
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (!answerWasSelected) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                        content: Text(
                                            'Please select an answer before going to the next question'),
                                      ));
                                      return;
                                    }
                                    _nextQuestion();
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            const Color(0xffe47829)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15))),
                                  ),
                                  child: Text(
                                      global.endOfQuiz
                                          ? 'Get Result'
                                          : 'Next Question',
                                      style: const TextStyle(
                                          fontSize: 23,
                                          fontFamily: 'Fredoka-One',
                                          color: Color(0xffefece4))),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// button choices screen.
class Choices extends StatelessWidget {
  final String answerText;
  final Icon icons1;
  final VoidCallback answerTap;

  const Choices(
      {super.key,
      required this.answerText,
      required this.icons1,
      required this.answerTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25, left: 50),
          child: SizedBox(
            width: ((MediaQuery.of(context).size.width * 1.5) / 2),
            height: ((MediaQuery.of(context).size.width * 0.3) / 2),
            child: ElevatedButton(
              onPressed: answerTap,
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xff6b9d11)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              child: Text(
                answerText,
                style: const TextStyle(
                    fontSize: 23,
                    fontFamily: 'Fredoka-One',
                    color: Color(0xffefece4)),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 30, right: 20),
            child: SizedBox(child: icons1),
          ),
        ),
      ],
    );
  }
}

// hash map of question and answers
// Note: dito kayo mag insert ng mga question image and choices then lagay niyo lang bool val true if yung choices na yun is yung correct answer.
const _questions = [
  {
    'image': 'assets/images/full/tarsier.jpg',
    'answers': [
      {'choices': 'Philippine Tarsier', 'score': true},
      {'choices': 'Binturong', 'score': false},
      {'choices': 'Ryukyu Flying Fox', 'score': false},
    ]
  },
  {
    'image': 'assets/images/full/sailfin.jpg',
    'answers': [
      {'choices': 'Komodo Dragon', 'score': false},
      {'choices': 'Tuko', 'score': false},
      {'choices': 'Philippine Sailfin Lizard', 'score': true},
    ]
  },
  {
    'image': 'assets/images/full/boiga-angulata.webp',
    'answers': [
      {'choices': 'Mindanao Hornbill', 'score': false},
      {'choices': 'Leyte Cat Snake', 'score': true},
      {'choices': 'Hamster', 'score': false},
    ]
  },
  {
    'image':  'assets/images/full/tamaraw.jpg',
    'answers': [
      {'choices': 'Tamaraw', 'score': true},
      {'choices': 'Philippine Carabao', 'score': false},
      {'choices': "Gray\'s Monitor", 'score': false},
    ]
  },
  {
    'image': 'assets/images/full/monkey.jpg',
    'answers': [
      {'choices': 'Dog', 'score': false},
      {'choices': 'Monkey', 'score': true},
      {'choices': 'Philippine Tarsier', 'score': false},
    ]
  },
  {
    'image':  'assets/images/full/deer.jpg',
    'answers': [
      {'choices': 'Philippine Warty Pig', 'score': false},
      {'choices': 'Philippine Deer', 'score': true},
      {'choices': 'Pangolin', 'score': false},
    ]
  },
  {
    'image':  'assets/images/full/chicken.jpg',
    'answers': [
      {'choices': 'Domestic Pigeon', 'score': false},
      {'choices': 'Mindanao Bleeding-Heart', 'score': false},
      {'choices': "Chicken", 'score': true},
    ]
  },
  {
    'image': 'assets/images/full/cockatoo.jpg',
    'answers': [
      {'choices': 'Philippine Forest Turtle', 'score': false},
      {'choices': 'Philippine Red-vented Cockatoo', 'score': true},
      {'choices': 'Philippine Eagle', 'score': false},
    ]
  },
  {
    'image': 'assets/images/full/crocodile.jpg',
    'answers': [
      {'choices': 'Philippine Warty Pig', 'score': false},
      {'choices': 'Owl', 'score': false},
      {'choices': 'Palawan Peacock-pheasant', 'score': true},
    ]
  },
    {
    'image':  'assets/images/full/dugong.webp',
    'answers': [
      {'choices': 'Sea Lion', 'score': false},
      {'choices': 'Sea Cow', 'score': false},
      {'choices': 'Dugong', 'score': true},
    ]
  },
];
