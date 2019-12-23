class Singer {
  void sing() {
    print("We will we will rock you");
  }
}

class Dancer {
  void dance() {
    print("Oppa gangnam style");
  }
}

class Actor {
  void act() {
    print("I love you babe.");
  }
}

class Performer with Singer, Dancer, Actor {
  void perform() {
    sing();
    act();
    dance();
  }
}
