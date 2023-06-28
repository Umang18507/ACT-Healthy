import 'package:act_health/questions/quiz_page.dart';
import 'package:flutter/material.dart';

class diabetes extends StatelessWidget {
  const diabetes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diabetes'),
        backgroundColor: Colors.green[900],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
            child: Text('About the disease',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23
            )
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
            decoration: BoxDecoration(
                color: Colors.green[100],
               borderRadius: BorderRadius.all(Radius.circular(15)),
                border: Border.all(
                width: 1,
                color: Colors.black,
              )
            ),
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 25),
            child: Text("Diabetes is a health condition where the sugar levels in your blood become too high. There are two main types: type 1 and type 2. Type 1 diabetes happens when your body doesn't make enough insulin, a hormone that helps control blood sugar. Type 2 diabetes occurs when your body doesn't use insulin properly. \n\nDiabetes can cause problems with your heart, kidneys, nerves, and eyes if not managed well. Treatment involves taking medicine, eating healthy foods, and staying active. It's important to regularly check your blood sugar levels to stay healthy.",
            style: TextStyle(
              fontSize: 20,
            ),),
          ),
        ],
      ),
      backgroundColor: Colors.green[50],
      floatingActionButton:
      Padding(
        padding: const EdgeInsets.fromLTRB(0,0,10,10),
        child: SizedBox(
          height: 50,
          width: 150,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(context , MaterialPageRoute(builder: (context) => QuestionPage()));
            },
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.zero
            ),
            child: Text('Start the Quiz'),
            splashColor: Colors.blue,
            backgroundColor: Colors.green[900],
          ),
        ),
      ),
    );
  }
}
