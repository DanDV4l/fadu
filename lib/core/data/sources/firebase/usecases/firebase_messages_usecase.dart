import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fadu/core/data/sources/firebase/controller/firebase_send_message_controller.dart';
import 'package:fadu/domain/entities/message_entity.dart';
import 'package:fadu/domain/usecases/messages_usecase.dart';

class FirebaseMessagesUsecase implements MessagesUsecase {
  @override
  Stream<QuerySnapshot> fetch({required userName}) async* {
    yield* FirebaseFirestore.instance
        .collection('profiles')
        .doc(userName)
        .collection('messages')
        .snapshots();
  }

  @override
  send({required snapshot, required MessageEntity message}) async {
    FirebaseSendMessageController send = FirebaseSendMessageController();
    await send(snapshotData: snapshot, message: message);
  }
}
