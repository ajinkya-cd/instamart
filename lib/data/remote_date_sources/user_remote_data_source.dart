import 'dart:convert';

import 'package:instamart/core/error/exceptions.dart';
import 'package:http/http.dart' as http;
import 'package:instamart/data/models/user_model.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> getUser();
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  @override
  Future<UserModel> getUser() async {
    return _getUserFromUrl('https://randomuser.me/api/');
  }

  Future<UserModel> _getUserFromUrl(String url) async {
    final response = await http.get(Uri.parse(url));

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);

    if (response.statusCode == 200) {
      return Future.value(UserModel.fromJson(jsonResponse['results'][0]));
    } else {
      throw ServerException();
    }
  }
}
