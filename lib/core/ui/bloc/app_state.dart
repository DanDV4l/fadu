import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppState extends Cubit {
  AsyncSnapshot _snapshot;

  get snapshot => _snapshot;
  set snapshot(var value) {
    value != null ? emit(_snapshot = value) : _snapshot = _snapshot;
  }

  AppState(this._snapshot) : super(_snapshot);
}
