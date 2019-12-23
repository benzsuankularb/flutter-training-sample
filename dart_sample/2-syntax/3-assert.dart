class Human {
  String _firstName;
  String _lastName;

  Human(this._firstName, this._lastName);

  String get fullName => "$_firstName $_lastName";

  void set firstName(String firstName) {
    assert(firstName != null, "Firstname cannot be null");
    _firstName = firstName;
  }

  void set lastName(String lastName) {
    assert(lastName != null, "Lastname cannot be null");
    _lastName = lastName;
  }
}
