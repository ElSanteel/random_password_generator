import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;

  CustomText({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Row(
        children: [
          Text(text,
              style: const TextStyle(color: Color(0xff4e5479), fontSize: 20)),
        ],
      ),
    );
  }
}
