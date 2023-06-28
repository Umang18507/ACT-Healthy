import 'package:flutter/material.dart';
class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id,required this.question,required this.answer,required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
    "How often do you urinate?",
    "options": ['More often than usual', 'Usual or less than it'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "How often do you feel thirsty?",
    "options": ['More often than usual', 'Usual or less than it'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": " Have you noticed any changes in your appetite?",
    "options": ['More often than usual', 'Usual or less than it'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "Have you lost weight without trying? ",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 5,
    "question": "Have you had any blurry vision? ",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "Have you had any fatigue or weakness? ",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question": "Have you had any sores that have healed very slowly? ",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question": "Have you had any tingling or numbness in your hands or feet? ",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question": " Do you have a family history of diabetes? ",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 10,
    "question": "Are you overweight or obese?",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 11,
    "question": " Are you physically inactive?",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
];