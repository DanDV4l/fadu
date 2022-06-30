import 'package:fadu/domain/entities/message_entity.dart';

class MessageDTO {
  Map<String, dynamic> toMap({required MessageEntity message}) {
    return {
      'messageAuthor': {
        'userID': message.messageAuthor.userID,
        'userName': message.messageAuthor.userName,
        'userContact': message.messageAuthor.userContact
      },
      'messageDestination': {
        'userID': message.messageDestination.userID,
        'userName': message.messageDestination.userName,
        'userContact': message.messageDestination.userContact
      },
      'messageContent': message.messageContent,
      'messageDateTime': message.messageDateTime
    };
  }
}
