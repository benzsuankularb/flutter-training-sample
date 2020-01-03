class Human {
  String name;
  String country;
  int age;
  List<String> wifes;

  Human(this.name, {this.age, this.country, this.wifes})
      : assert(name != null),
        assert(age > 0),
        assert(country != null),
        assert(wifes != null);
}
