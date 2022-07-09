import 'package:fadu/domain/entities/message_entity.dart';
import 'package:fadu/domain/repositories/messages_repository.dart';

class AWSRepository implements MessagesRepository {
  @override
  fetch({required userName}) {
    throw UnimplementedError();
  }

  @override
  send({required snapshotData, required MessageEntity message}) {
    throw UnimplementedError();
  }
}
