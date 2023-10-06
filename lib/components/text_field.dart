import 'package:flutter/material.dart';
import 'package:session_17/core/size_config.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  const CustomTextField(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: SizeConfig.screenWidth! * 0.9,
            height: SizeConfig.screenHeight! * 0.1,
            decoration: const BoxDecoration(
              color: Color(0xff01113f),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: TextField(
              textAlign: TextAlign.center,
              enabled: false,
              decoration: InputDecoration(
                  hintText: text,
                  hintStyle: const TextStyle(color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}
