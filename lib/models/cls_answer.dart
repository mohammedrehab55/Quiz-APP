import 'package:flutter/foundation.dart';

class ClsAnswer {
  final String title;
  final VoidCallback onPressed;
  ClsAnswer({required this.title, required this.onPressed});
}

List<ClsAnswer> answers = [
  ClsAnswer(title: "Science", onPressed: () {}),
  ClsAnswer(title: "Commerce", onPressed: () {}),
  ClsAnswer(title: "Arts", onPressed: () {}),
  ClsAnswer(title: "Medcine", onPressed: () {}),
];
