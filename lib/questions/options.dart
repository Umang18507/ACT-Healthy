import 'package:act_health/Controllers/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class option extends StatelessWidget {
  const option({
    super.key,
    required this.text,
    required this.index,
    required this.press,
  });

  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
      init: QuestionController(),
      builder: (qnController) {

        Color getTheRightColor(){
          if (qnController.isAnswered) {
            if (index == qnController.correctAns){
              return Color(0xFF6AC259);
            } else if (index == qnController.selectedAns &&
                qnController.selectedAns != qnController.correctAns){
              return Color(0xFFE92E30);
            }
          };
          return Color(0xFFDCFFCE);
        }
        return InkWell(
          onTap: press,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10 , vertical:10 ),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: getTheRightColor(),
                borderRadius: BorderRadius.circular(15)
            ),
            child: Row(
              children: [
                Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.black)
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text("${index + 1} $text", style: TextStyle(fontSize: 16),),

              ],
            ),
          ),
        );
      }
    );
  }
}
