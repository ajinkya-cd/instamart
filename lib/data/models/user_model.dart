import 'package:instamart/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    String? firstName,
    String? lastName,
    String? gender,
    String? email,
    String? phone,
    String? imageUrl,
  }) : super(
    firstName: firstName,
    lastName: lastName,
    gender: gender,
    email: email,
    phone: phone,
    imageUrl: imageUrl
  );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      firstName: json['name']['first'],
      lastName: json['name']['last'],
      gender: json['gender'],
      email: json['email'],
      phone: json['phone'],
      imageUrl: json['picture']['large']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'gender': gender,
      'email': email,
      'phone': phone,
      'imageUrl': imageUrl
    };
  }
}
