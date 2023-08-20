import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http_crud_dummy/features/home_page/data/models/user_dto.dart';
import 'package:http_crud_dummy/network/http_client.dart';

final remoteProvider = Provider((ref) => UserRemoteDataSource());

class UserRemoteDataSource {
  static String domainName = '64c9edf1b2980cec85c28ce9.mockapi.io';
  static String path = 'user/';

  Future<UserDto> getUser({required String userID}) async {
    final response = await HttpClientObj.instance
        .getApi(domainName: domainName, path: '$path$userID');
    if (response.statusCode == 200) {
      return UserDto.fromJson(jsonDecode(response.body));
    } else {
      throw HttpException("");
    }
  }

  Future<List<UserDto>> getUsers() async {
    final response =
        await HttpClientObj.instance.getApi(domainName: domainName, path: path);
    if (response.statusCode == 200) {
      List responseData = jsonDecode(response.body);
      return responseData.map((e) => UserDto.fromJson(e)).toList();
    } else {
      throw HttpException("");
    }
  }

  Future<bool> deleteUser({required String userID}) async {
    final response = await HttpClientObj.instance.deleteApi(domainName:
    domainName, path: path + userID);
    if(response.statusCode == 200){
      return true;
    }else{
      return false;
    }
  }
}
