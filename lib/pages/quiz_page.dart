import 'package:flutter/material.dart';
import 'quiz_detail_page.dart'; // QuizDetailPage import
import 'quiz_data/regular_rhythm.dart'; // regularQuizQuestions import
import 'quiz_data/irregular_rhythm.dart'; // irregularQuizQuestions import
import 'quiz_data/narrow_qrs_rhythm.dart';
import 'quiz_data/wide_qrs_rhythm.dart';
import 'quiz_data/bradycardia_rhythm.dart';
import 'quiz_data/ectopic_rhythm.dart';
import 'quiz_data/emergency_rhythm.dart';
import 'quiz_data/all_rhythm.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasicQuizPage(); // 바로 BasicQuizPage로 이동
  }
}

class BasicQuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Quiz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: [
                  quizCard(context, 'Regular rhythm', regularQuizQuestions, 'Start Quiz'),
                  quizCard(context, 'Irregular rhythm', irregularQuizQuestions, 'Start Quiz'),
                  quizCard(context, 'Narrow QRS rhythm', narrowqrsQuizQuestions, 'Start Quiz'),
                  quizCard(context, 'Wide QRS rhythm', wideqrsQuizQuestions, 'Start Quiz'),
                  quizCard(context, 'Bradycardia rhythm', bradycardiaQuizQuestions, 'Start Quiz'),
                  quizCard(context, 'Ectopic rhythm', ectopicQuizQuestions, 'Start Quiz'),
                  quizCard(context, 'Emergency rhythm', emergencyQuizQuestions, 'Start Quiz'),
                  quizCard(context, 'All rhythm', allrhythmQuizQuestions, 'Start Quiz'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget quizCard(BuildContext context, String title, List<Map<String, dynamic>> quizQuestions, String buttonText) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    elevation: 5,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuizDetailPage(quizQuestions: quizQuestions),
              ),
            );
          },
          child: Text(buttonText),
        ),
      ],
    ),
  );
}
