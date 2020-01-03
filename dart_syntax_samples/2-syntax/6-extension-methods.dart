extension StringExtensions on String {
  bool checkNullOrEmpty() {
    return this == null || this == "";
  }

  bool get isNullOrEmpty => this == null || this == "";

  String operator *(str) => this + str;
}
