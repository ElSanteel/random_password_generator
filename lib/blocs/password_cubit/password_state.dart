part of 'password_cubit.dart';

@immutable
abstract class PasswordState {}

class PasswordInitial extends PasswordState {}

class GeneratePasswordState extends PasswordState {}

class ChangeLenPasswordState extends PasswordState {}

class NumbersSwitchState extends PasswordState {}

class LettersSwitchState extends PasswordState {}

class SymbolsSwitchState extends PasswordState {}

class GeneratedPasswordState extends PasswordState {}
