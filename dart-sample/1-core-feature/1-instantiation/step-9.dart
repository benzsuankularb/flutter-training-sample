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

  Human._() {}

  Human._random() {}
}
