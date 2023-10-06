class PasswordModel {
  double len;
  bool hasNumbers;
  bool hasLetters;
  bool hasSymbols;
  String password;

  PasswordModel(
      {required this.len,
      required this.hasNumbers,
      required this.hasLetters,
      required this.hasSymbols,
      required this.password});
}
