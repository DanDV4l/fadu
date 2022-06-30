import 'package:fadu/domain/entities/message_entity.dart';

abstract class MessagesRepository {
  fetch({required userName}) {}
  send({required snapshotData, required MessageEntity message}) {}
}
