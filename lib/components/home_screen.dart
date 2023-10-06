import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("GENERATED PASSWORD",style: TextStyle(color: Colors.white,fontSize: 15),textAlign: TextAlign.start,),
            Container(
              width: 300,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.indigo[900],
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "password"
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
