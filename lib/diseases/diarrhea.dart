import 'package:flutter/material.dart';

class diarrhea extends StatelessWidget {
  const diarrhea({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diarrhea'),
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
            child: Text("Diarrhea is a condition where a person has watery or loose bowel movements more often than usual. It happens when the digestive system is not working properly. Diarrhea can be caused by many things, such as infections, viruses, or food poisoning. It can make you feel weak and dehydrated because your body loses a lot of water.\n\n To treat diarrhea, it's important to drink plenty of fluids to stay hydrated. Eating plain and easy-to-digest foods like rice, toast, and bananas can also help. If diarrhea lasts for a long time or gets worse, it's important to see a doctor for further advice and treatment. Remember to wash your hands regularly to prevent the spread of diarrhea-causing germs.",
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
            onPressed: () {},
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
