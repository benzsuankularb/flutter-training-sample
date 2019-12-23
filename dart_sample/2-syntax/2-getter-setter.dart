class Human {
  String _firstName;
  String _lastName;

  Human(this._firstName, this._lastName);

  String get fullName => "$_firstName $_lastName";

  void set firstName(String firstName) {
    _firstName = firstName;
  }

  void set lastName(String lastName) {
    _lastName = lastName;
  }
}
