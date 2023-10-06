import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:session_17/model/password_model.dart';

part 'password_state.dart';

class PasswordCubit extends Cubit<PasswordState> {
  PasswordCubit() : super(PasswordInitial());

  static PasswordCubit get(context) => BlocProvider.of(context);

  PasswordModel passwordModel = PasswordModel(
      len: 8,
      hasNumbers: true,
      hasLetters: true,
      hasSymbols: false,
      password: "");

  void changeLen(value) {
    passwordModel.len = value;
    emit(ChangeLenPasswordState());
  }

  void numberSwitch(value) {
    passwordModel.hasNumbers = value;
    emit(NumbersSwitchState());
  }

  void lettersSwitch(value) {
    passwordModel.hasLetters = value;
    emit(LettersSwitchState());
  }

  void symbolsSwitch(value) {
    passwordModel.hasSymbols = value;
    emit(SymbolsSwitchState());
  }

  void generateRandomPassword() {
    var randomList = "";
    const chars = ' AaBbCcDdEeFfGgHhIiJjKkLltMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
    const numbers = ' 0123456789';
    const symbols = ' !@#\$%^&*()_+';

    if (passwordModel.hasNumbers) {
      randomList += numbers;
    }
    if (passwordModel.hasLetters) {
      randomList += chars;
    }
    if (passwordModel.hasSymbols) {
      randomList += symbols;
    }
    passwordModel.password +=
        _generateRandomString(passwordModel.len.toInt(), randomList);
    emit(GeneratedPasswordState());
  }

  String _generateRandomString(int len, String chars) {
    var r = Random();
    return List.generate(len, (index) => chars[r.nextInt(chars.length)]).join();
  }
}
