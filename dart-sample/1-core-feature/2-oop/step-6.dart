abstract class Human {
  String name;

  Human(this.name);
}

mixin Singer {
  void sing() {
    print("We will we will rock you");
  }
}

mixin Dancer {
  void dance() {
    print("Oppa gangnam style");
  }
}

mixin Actor {
  void act() {
    print("I love you babe.");
  }
}

class Performer extends Human with Singer, Dancer, Actor {
  Performer(String name) : super(name);

  void perform() {
    sing();
    act();
    dance();
  }
}

class FakePerformer implements Performer {
  @override
  String name;

  @override
  void act() {
    print("I am fake actor");
  }

  @override
  void dance() {
    print("I am fake dancer");
  }

  @override
  void perform() {
    print("I am fake performer");
  }

  @override
  void sing() {
    print("I am fake singer");
  }
}
