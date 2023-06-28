import 'package:act_health/Models/Questions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:act_health/Controllers/question_controller.dart';
import 'options.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
    required this.question,
  });

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      padding: EdgeInsets.fromLTRB(8,8,8,15),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.green[200],
          borderRadius: BorderRadius.circular(25)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              question.question,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ...List.generate(question.options.length,
                (index) =>  option(
                  index: index,
                  text: question.options[index],
                  press: () => _controller.checkAns(question, index),
                ),
          ),
        ],
      ),
    );
  }
}