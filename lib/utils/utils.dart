class Utils {
  static bool isEmailValid(String? email) {
    if (email?.isEmpty == true) {
      return false;
    }

    String source =
        r"^[a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-]+$";
    return RegExp(source).hasMatch(email!);
  }

  static bool passwordMinSize(String s, {int minSize = 8}) {
    return s.length >= minSize;
  }
}