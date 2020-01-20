import 'package:flutter/material.dart';

class ShareStore with ChangeNotifier {
  ShareStore();

  String _displayText = "";

  void setDisplayText(String text) {
    _displayText = text;
    notifyListeners();
  }

  String get getDisplayText => _displayText;
}