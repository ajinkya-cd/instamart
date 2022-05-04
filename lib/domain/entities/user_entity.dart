import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String? firstName;
  final String? lastName;
  final String? gender;
  final String? email;
  final String? phone;
  final String? imageUrl;

  const UserEntity({
    this.firstName,
    this.lastName,
    this.gender,
    this.email,
    this.phone,
    this.imageUrl
  });

  @override
  // TODO: implement props
  List<Object?> get props =>[firstName, lastName, gender, email, phone, imageUrl];
}
