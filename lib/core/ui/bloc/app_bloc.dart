import 'dart:async';

import 'package:fadu/core/data/repositories/firebase_repository.dart';
import 'package:fadu/domain/repositories/messages_repository.dart';

class AppBloc {
  final StreamController _controller = StreamController();
  Stream get output => _controller.stream;

  void initState() {
    final MessagesRepository _repository = FirebaseRepository();
    _controller.addStream(_repository.fetch(userName: 'user1ID'));
  }

  void dispose() {
    _controller.close();
  }
}
