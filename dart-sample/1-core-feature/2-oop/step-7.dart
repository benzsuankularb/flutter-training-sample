class HttpClient {
  String get(String api) {
    return "This is real result";
  }

  void post(String api) {
    print("done");
  }
}

class MockHttpClient implements HttpClient {
  @override
  String get(String api) {
    return "This is fake result";
  }

  @override
  void post(String api) {
    print("fake done");
  }
}
