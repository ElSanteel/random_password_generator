import 'package:flutter/material.dart';

class HeadScreenWidget extends StatelessWidget {
  const HeadScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Generate Password',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 26,
            ),
          ),
        ),
        SizedBox(
          width: 70,
        ),
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/face.png'),
        ),
      ],
    );
  }
}
