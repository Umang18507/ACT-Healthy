import 'package:act_health/diseases/diabetes.dart';
import 'package:act_health/diseases/diarrhea.dart';
import 'package:act_health/diseases/malaria.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
  ));
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ACT Healthy"),
        centerTitle: true,
        backgroundColor: Colors.green[900],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20,20,20,0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image(image: AssetImage('Assets/logo_bgno.png',)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8,50,8,8),
              child: Text('Which of the disease you want to detect',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(3, 40, 3, 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(onPressed: () {
                    Navigator.push(context , MaterialPageRoute(builder: (context) => diabetes()));
                  },
                    child: Text('Diabetes'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[900],
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 40)
                    )
                  ),
                  ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => diarrhea()));
                  },
                      child: Text('Diarrhea'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green[900],
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 40)
                      )
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => malaria()));
                  },
                      child: Text('Malaria'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green[900],
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 46)
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.green[50],

      floatingActionButton: SizedBox(
        height: 50,
        width: 100,
        child: FloatingActionButton(
          onPressed: () {},
          shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.zero
          ),
          child: Text('About Us'),
          splashColor: Colors.blue,
          backgroundColor: Colors.green[900],
        ),
      ),
    );
  }
}
