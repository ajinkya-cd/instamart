import 'package:instamart/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity> getUser();
}
