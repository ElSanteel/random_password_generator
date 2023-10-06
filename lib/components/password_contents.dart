import 'package:flutter/material.dart';

import '../core/size_config.dart';

class PasswordContents extends StatelessWidget {
  final bool isSwitched;
  String text;
  var fun;
  PasswordContents(
      {required this.isSwitched,
      required this.text,
      required this.fun,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight! * 0.1,
      width: double.infinity,
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff060f3d),
      ),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
          const Spacer(),
          Switch(
            value: isSwitched,
            onChanged: fun,
            activeColor: Colors.blueAccent,
            inactiveThumbColor: Colors.grey,
          ),
        ],
      ),
    );
  }
}
