class Human {
  String name;
  String country;
  int age;
  List<String> wifes;

  Human(this.name,
      {this.age = 20, this.country = "Thailand", this.wifes = const []})
      : assert(name != null),
        assert(age > 0),
        assert(country != null),
        assert(wifes != null);

  Human.fromAge(this.age) {
    this.country = "Thailand";
    this.name = "Benz";
    this.wifes = ["cherry", "nanny"];
  }

  Human.fromJson(Map<dynamic, dynamic> map) {
    this.name = map["name"];
    this.country = map["country"];
    this.age = map["age"];
    this.wifes = map["wifes"];
  }
}
