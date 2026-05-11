class TextValidator {
  static String? validateEmail(String? value) {
    final regex = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Alamat email tidak sesuai'
        : null;
  }
}
