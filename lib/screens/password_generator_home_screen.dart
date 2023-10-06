import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session_17/blocs/password_cubit/password_cubit.dart';
import 'package:session_17/components/custom_button.dart';
import 'package:session_17/components/head_screen_widget.dart';
import 'package:session_17/components/password_contents.dart';
import 'package:session_17/components/text_field.dart';

import '../components/custom_text.dart';
import '../components/slider_widget.dart';
import '../core/size_config.dart';

class PasswordGeneratorHomeScreen extends StatelessWidget {
  const PasswordGeneratorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: const Color(0xff02082c),
      body: SingleChildScrollView(
        child: SafeArea(
          child: BlocConsumer<PasswordCubit, PasswordState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              var cubit = PasswordCubit.get(context);
              return Column(children: [
                const HeadScreenWidget(),
                const SizedBox(
                  height: 15,
                ),
                CustomText(text: "GENERATED PASSWORD"),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(cubit.passwordModel.password),
                const SizedBox(
                  height: 15,
                ),
                CustomText(text: "LENGTH:${cubit.passwordModel.len.toInt()}"),
                const SizedBox(
                  height: 10,
                ),
                SliderWidget(cubit.passwordModel.len, cubit.changeLen),
                const SizedBox(
                  height: 15,
                ),
                CustomText(text: "SETTINGS"),
                PasswordContents(
                    isSwitched: cubit.passwordModel.hasNumbers,
                    text: "include numbers",
                    fun: cubit.numberSwitch),
                PasswordContents(
                  isSwitched: cubit.passwordModel.hasLetters,
                  text: "include letters",
                  fun: cubit.lettersSwitch,
                ),
                PasswordContents(
                    isSwitched: cubit.passwordModel.hasSymbols,
                    text: "include symbols",
                    fun: cubit.symbolsSwitch),
                const SizedBox(height: 15),
                CustomButton(fun: () {
                  cubit.generateRandomPassword();
                })
              ]);
            },
          ),
        ),
      ),
    );
  }
}
