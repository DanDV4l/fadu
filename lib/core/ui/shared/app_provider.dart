import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  dynamic _snapshot;

  get snapshot => _snapshot;
  set snapshot(var value) {
    _snapshot = value;
    notifyListeners();
  }
}
