import 'package:instamart/data/remote_date_sources/user_remote_data_source.dart';
import 'package:instamart/domain/entities/user_entity.dart';
import 'package:instamart/domain/repositories/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl({required this.remoteDataSource});

  @override
  Future<UserEntity> getUser() {
    return remoteDataSource.getUser();
  }
}
