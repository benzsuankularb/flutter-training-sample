class Human {
  static Human _instance;

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

  factory Human.instance() {
    if (_instance == null) {
      _instance = Human(
        "Seri",
        age: 30,
        country: "Thailand",
        wifes: ["main wife", "second wife", "real wife"],
      );
    }
    return _instance;
  }
}
