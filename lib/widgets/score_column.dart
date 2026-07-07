import 'package:flutter/material.dart';

class ScoreColumn extends StatelessWidget {
  final int questionScore;
  final VoidCallback resetcallback;
  const ScoreColumn({
    super.key,
    required this.questionScore,
    required this.resetcallback,
  });
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
