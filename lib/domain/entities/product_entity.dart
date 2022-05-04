import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final int? id;
  final String? title;
  final dynamic price;
  final String? description;
  final String? category;
  final String? image;

  const ProductEntity({this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image,
  });

  @override
  // TODO: implement props
  List<Object?> get props =>[id, title, price, description, category, image];
}
