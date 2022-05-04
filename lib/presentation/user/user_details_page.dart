// Testing user API
// Please do not follow this implementation
// Use proper Bloc instead

import 'package:flutter/material.dart';

import '../../di/injector_config.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/usecases/get_user_usecase.dart';

class UserDetailsPage extends StatefulWidget {
  const UserDetailsPage({Key? key}) : super(key: key);

  @override
  State<UserDetailsPage> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<UserEntity>(
      future: InjectorConfig.resolve<GetUserUsecase>().call(),
      builder: (BuildContext context, AsyncSnapshot<UserEntity> snapshot) {
        if (snapshot.hasData) {
          return UserDataDisplay(user: snapshot.data!);
        } else if (snapshot.hasError) {
          return const Text('Error fetching data.');
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}


class UserDataDisplay extends StatelessWidget {
  final UserEntity user;

  const UserDataDisplay({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(user.imageUrl!),
        const SizedBox(height: 16,),
        Text(user.firstName! + ' ' + user.lastName!,
          style: const TextStyle(fontSize: 24),),
        const SizedBox(height: 16,),
        Text(user.email!),
        Text(user.phone!),
      ],
    );
  }
}


