import 'package:act_health/Controllers/question_controller.dart';
import 'package:act_health/questions/question_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/question_controller.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz - Diabetes'),
        centerTitle: true,
        backgroundColor: Colors.green[900],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image(image:ResizeImage(AssetImage('Assets/diabetes.png'), width: 300, height: 300)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Question 1/11', style: TextStyle( fontSize: 30),),
          ),
          Divider(thickness: 1.5),
          SizedBox(height: 40),
          Expanded(
              child:PageView.builder(
                itemCount: _questionController.questions.length,
                  itemBuilder: (context, index) => QuestionCard(
                    question: _questionController.questions[index],))
          )
        ],
      ),
    );
  }
}



