import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fadu/core/data/dtos/message_dto.dart';
import 'package:fadu/domain/entities/message_entity.dart';
import 'package:flutter/Widgets.dart';

class FirebaseSendMessageController {
  var firestore = FirebaseFirestore.instance.collection('profiles');

  call(
      {required AsyncSnapshot snapshotData,
      required MessageEntity message}) async {
    MessageDTO messageDTO = MessageDTO();
    var receivedData = snapshotData.data;
    List messagesData = [];

    try {
      receivedData.docs.forEach((element) async {
        if (element.id.toString() == message.messageDestination.userID) {
          var elementMessage = element.data()['messages'];
          messagesData = elementMessage;
          messagesData.add(messageDTO.toMap(message: message));
        }
        await firestore
            .doc(message.messageAuthor.userID)
            .collection('messages')
            .doc(message.messageDestination.userID)
            .set({'messages': messagesData});

        await firestore
            .doc(message.messageDestination.userID)
            .collection('messages')
            .doc(message.messageAuthor.userID)
            .set({'messages': messagesData});
      });
    } catch (e) {
      messagesData.add(messageDTO.toMap(message: message));
      await firestore
          .doc(message.messageAuthor.userID)
          .collection('messages')
          .doc(message.messageDestination.userID)
          .set({'messages': messagesData});

      await firestore
          .doc(message.messageDestination.userID)
          .collection('messages')
          .doc(message.messageAuthor.userID)
          .set({'messages': messagesData});
    }
  }
}
