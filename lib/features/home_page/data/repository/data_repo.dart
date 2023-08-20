import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http_crud_dummy/features/home_page/data/datasources/user_remote_data.dart';
import 'package:http_crud_dummy/features/home_page/domain/entities/user_model.dart';
import 'package:http_crud_dummy/features/home_page/domain/repository/i_user_domain.dart';
import 'package:http_crud_dummy/network/http_exception.dart';

class UserRepositoryImpl implements UserDomainRepo {
  final ProviderRef ref;

  UserRepositoryImpl(this.ref);

  @override
  Future<User> getUser({required String userID}) async {
    try {
      final response = await ref.read(remoteProvider).getUser(userID: userID);
      return response.toDomain();
    } on HttpException catch (e) {
      /// error must be returned as Either from sealed class
      throw HttpExceptionObj.fromHttpException(e).toString();
    }
  }

  @override
  Future<List<User>> getUsers() async {
    final response = await ref.read(remoteProvider).getUsers();
    return response.map((e) => e.toDomain()).toList();
  }

  @override
  Future<bool> deleteUser({required String userID}) {
    return ref.read(remoteProvider).deleteUser(userID: userID);
  }
}
