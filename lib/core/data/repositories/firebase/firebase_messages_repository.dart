import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fadu/core/data/sources/firebase/usecases/firebase_messages_usecase.dart';
import 'package:fadu/domain/entities/message_entity.dart';
import 'package:fadu/domain/repositories/messages_repository.dart';
import 'package:fadu/domain/usecases/messages_usecase.dart';

class FirebaseMessagesRepository implements MessagesRepository {
  MessagesUsecase messages = FirebaseMessagesUsecase();
  @override
  Stream<QuerySnapshot> fetch({required userName}) async* {
    yield* messages.fetch(userName: userName);
  }

  @override
  send({required snapshotData, required MessageEntity message}) {
    messages.send(snapshot: snapshotData, message: message);
  }
}
