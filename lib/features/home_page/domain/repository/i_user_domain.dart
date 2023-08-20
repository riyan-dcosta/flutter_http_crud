
import 'package:http_crud_dummy/features/home_page/domain/entities/user_model.dart';

abstract class UserDomainRepo {
  Future<User> getUser({required String userID});

  Future<List<User>> getUsers();

  Future<bool> deleteUser({required String userID});
}
