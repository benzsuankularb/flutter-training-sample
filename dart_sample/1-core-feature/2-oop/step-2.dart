class Singer {
  void sing() {
    print("We will we will rock you");
  }

  void perfrom() {
    sing();
  }
}

class Dancer {
  void dance() {
    print("Oppa gangnam style");
  }

  void perfrom() {
    dance();
  }
}

class Actor {
  void act() {
    print("I love you babe.");
  }

  void perfrom() {
    act();
  }
}

class Performer with Singer, Dancer, Actor {
  void perform() {
    sing();
    act();
    dance();
  }

  void doSomething() {
    perfrom();
  }
}
