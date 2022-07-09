import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fadu/core/data/repositories/firebase/firebase_messages_repository.dart';
import 'package:fadu/domain/repositories/messages_repository.dart';

class AppBloc {
  final String _user;
  final StreamController<QuerySnapshot> _controller = StreamController();
  final MessagesRepository _repository = FirebaseMessagesRepository();

  Stream<QuerySnapshot> get output => _controller.stream;

  void initState() {
    _controller.addStream(_repository.fetch(userName: _user));
  }

  void dispose() {
    _controller.close();
  }

  AppBloc(this._user);
}
