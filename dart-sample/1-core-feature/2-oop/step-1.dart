class Singer {
  void sing() {
    print("We will we will rock you");
  }
}

class Performer extends Singer {
  void perform() {
    sing();
  }
}
