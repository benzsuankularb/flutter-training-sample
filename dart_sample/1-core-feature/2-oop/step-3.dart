abstract class Singer {
  void sing() {
    print("We will we will rock you");
  }
}

abstract class Dancer {
  void dance() {
    print("Oppa gangnam style");
  }
}

abstract class Actor {
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
