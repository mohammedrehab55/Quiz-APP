import 'package:flutter/material.dart';
import 'package:quiz_app/models/cls_questions.dart';
import 'package:quiz_app/widgets/answer_button.dart';
import 'package:quiz_app/widgets/score_column.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyHomeState();
}

class _MyHomeState extends State<Home> {
  int qIndex = 0;
  int? selectedAnswerIndex;
  bool isNextQuestions = true;
  int questionScore = 0;
  bool isChoosen = false;
  void reset() {
    setState(() {
      questionScore = 0;
      isNextQuestions = true;
      qIndex = 0;
    });
  }

  void increaseIndex() {
    setState(() {
      if (qIndex < questions.length - 1) {
        qIndex++;
        questionScore += 10;
      } else {
        isNextQuestions = false;
        questionScore += 10;
      }
    });

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: isNextQuestions
            ? Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${questions[qIndex].title}",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Answer And Get Points",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),

                    Column(
                      children: List.generate(
                        questions[qIndex].questionAnswers.length,
                        (index) => AnswerButton(
                          answer: questions[qIndex].questionAnswers[index],
                          answerChossenCallBack: () => setState(() {
                            selectedAnswerIndex = index;
                          }),
                          isChoosen: selectedAnswerIndex == index,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            increaseIndex();
                            selectedAnswerIndex = null;
                          },
                          child: Text(
                            "Next",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // ],
              )
            : ScoreColumn(questionScore: questionScore, resetcallback: reset),
      ),
    );
  }
}
