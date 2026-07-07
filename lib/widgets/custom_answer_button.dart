import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_model.dart';

class AnswerButton extends StatelessWidget {
  ClsAnswer answer;
  VoidCallback answerChossenCallBack;
  bool isChoosen;
  AnswerButton({
    required this.answer,
    required this.isChoosen,
    required this.answerChossenCallBack,
  });
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: InkWell(
          onTap: answerChossenCallBack,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: isChoosen ? Colors.green : Colors.white,
              border: BoxBorder.all(color: Colors.black87),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Icon(Icons.add),
                SizedBox(width: 16),
                Text(
                  answer.title,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/* ElevatedButton(
          onPressed: this.onPressed,
          child: Text(answer.title, style: TextStyle(fontSize: 25)),
        ), */