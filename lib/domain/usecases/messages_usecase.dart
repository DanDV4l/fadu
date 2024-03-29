import 'package:fadu/domain/entities/message_entity.dart';
import 'package:fadu/domain/repositories/messages_repository.dart';

MessagesRepository? repository;

abstract class MessagesUsecase {
  fetch({required userName}) async* {
    repository!.fetch(userName: userName);
  }

  send({required snapshot, required MessageEntity message}) {
    repository!.send(snapshotData: snapshot, message: message);
  }
}
