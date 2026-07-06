import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScoreColumn extends StatelessWidget {
  final int questionScore;
  final VoidCallback resetcallback;
  ScoreColumn({required this.questionScore, required this.resetcallback});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Congratiolation Your Score Is : ",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            "$questionScore",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: resetcallback,
            child: Text(
              "Reset",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
