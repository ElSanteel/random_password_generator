import 'package:flutter/material.dart';

import '../core/size_config.dart';

class SliderWidget extends StatelessWidget {
  double currentSliderValue = 20;
  var fun;

  SliderWidget(this.currentSliderValue, this.fun, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: SizeConfig.screenWidth! * 0.9,
        height: SizeConfig.screenHeight! * 0.1,
        decoration: BoxDecoration(
            color: const Color(0xff060f3d),
            borderRadius: BorderRadius.circular(10)),
        child: Slider(
            value: currentSliderValue,
            min: 8,
            max: 20,
            divisions: 12,
            label: currentSliderValue.round().toString(),
            onChanged: fun),
      ),
    );
  }
}
