import 'package:fadu/core/data/sources/firebase/usecases/firebase_user_usecase.dart';
import 'package:fadu/domain/repositories/user_repository.dart';
import 'package:fadu/domain/usecases/user_usecase.dart';

class FirebaseUserRepository implements UserRepository {
  UserUsecase user = FirebaseUserUsecase();

  @override
  getdata({required userID}) {
    user.getdata(userID: userID);
  }

  @override
  login() {
    user.login();
  }

  @override
  logout() {
    user.logout();
  }

  @override
  signup() {
    user.signup();
  }

  @override
  update() {
    user.update();
  }
}
