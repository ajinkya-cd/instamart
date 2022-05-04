import 'package:instamart/domain/entities/user_entity.dart';
import 'package:instamart/domain/repositories/user_repository.dart';

class GetUserUsecase {
  final UserRepository? repository;

  GetUserUsecase(this.repository);

  Future<UserEntity> call() async {
    return await repository!.getUser();
  }
}