import 'package:quiz_app/models/answer_model.dart';

class Question {
  final String title;

  final List<ClsAnswer> questionAnswers;
  Question(this.title, this.questionAnswers);
}

List<Question> questions = [
  Question("What's Your Universtiy", [
    ClsAnswer(title: "Tanta", onPressed: () {}),
    ClsAnswer(title: "Alex", onPressed: () {}),
    ClsAnswer(title: "Zagazig", onPressed: () {}),
    ClsAnswer(title: "Cairo", onPressed: () {}),
  ]),
  Question("What's Your Collage", [
    ClsAnswer(title: "Science", onPressed: () {}),
    ClsAnswer(title: "Commerce", onPressed: () {}),
    ClsAnswer(title: "Arts", onPressed: () {}),
    ClsAnswer(title: "Medcine", onPressed: () {}),
  ]),
  Question("What's Your Depatment", [
    ClsAnswer(title: "Chemistry", onPressed: () {}),
    ClsAnswer(title: "Computer Science", onPressed: () {}),
    ClsAnswer(title: "Physic", onPressed: () {}),
    ClsAnswer(title: "Mathimatic", onPressed: () {}),
  ]),
  Question("What's Your Level", [
    ClsAnswer(title: "1rd", onPressed: () {}),
    ClsAnswer(title: "2rd", onPressed: () {}),
    ClsAnswer(title: "3rd", onPressed: () {}),
    ClsAnswer(title: "4rd", onPressed: () {}),
  ]),
];
