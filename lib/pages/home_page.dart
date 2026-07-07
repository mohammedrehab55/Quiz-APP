import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_model.dart';
import 'package:quiz_app/widgets/custom_answer_button.dart';
import 'package:quiz_app/widgets/score_column.dart';

class HomeSceen extends StatefulWidget {
  const HomeSceen({super.key});

  @override
  State<HomeSceen> createState() => _MyHomeSceenState();
}

class _MyHomeSceenState extends State<HomeSceen> {
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
                      padding: EdgeInsets.symmetric(
                        vertical: 30,
                        horizontal: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            questions[qIndex].title,
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Answer And Get Points",
                            style: Theme.of(
                              context,
                            ).textTheme.bodyLarge!.copyWith(fontSize: 20),
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
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                          ),
                          child: const Text(
                            "Next",
                            style: TextStyle(color: Colors.white),
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
