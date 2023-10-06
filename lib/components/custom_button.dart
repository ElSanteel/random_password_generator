import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  VoidCallback fun;
  CustomButton({required this.fun, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff2264fc),
          fixedSize: const Size(370, 60),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),
      onPressed: fun,
      child: const Text(
        "GENERATE PASSWORD",
        style: TextStyle(fontSize: 15),
      ),
    );
  }
}
