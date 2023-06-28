import 'package:flutter/material.dart';

class malaria extends StatelessWidget {
  const malaria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Malaria'),
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
            child: Text("Malaria is a disease caused by tiny parasites that enter our bodies through mosquito bites. These parasites can make us sick and cause symptoms like fever, chills, and body aches. Malaria is a serious illness that can even be deadly if not treated. It is more common in warm and tropical areas.\n\n To prevent malaria, it's important to use mosquito nets while sleeping, wear protective clothing, and use insect repellents. If someone gets malaria, they can be treated with medicines prescribed by a doctor. Remember, taking precautions against mosquito bites is the key to staying safe from malaria.",
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
