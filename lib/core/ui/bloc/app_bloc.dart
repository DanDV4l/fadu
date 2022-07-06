import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fadu/core/data/repositories/firebase_repository.dart';
import 'package:fadu/domain/repositories/messages_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBloc extends Cubit {
  final String _user;
  final StreamController<QuerySnapshot> _controller = StreamController();
  final MessagesRepository _repository = FirebaseRepository();

  Stream<QuerySnapshot> get output => _controller.stream;

  void initState() {
    _controller.addStream(_repository.fetch(userName: _user));
  }

  void dispose() {
    _controller.close();
  }

  AppBloc(this._user) : super(null);
}
