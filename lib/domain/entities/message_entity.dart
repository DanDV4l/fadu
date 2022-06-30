import 'package:fadu/domain/entities/user_entity.dart';

class MessageEntity {
  UserEntity messageAuthor;
  UserEntity messageDestination;
  String messageContent;
  String messageDateTime;

  MessageEntity(
      {required this.messageAuthor,
      required this.messageDestination,
      required this.messageContent,
      required this.messageDateTime});
}
