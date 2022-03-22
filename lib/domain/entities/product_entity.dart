import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final int? id;
  final String? title;
  final double? price;
  final String? description;
  final String? category;
  final String? image;
  // double? rating;
  // double? count;

  const ProductEntity({this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image,
      // this.rating,
      // this.count
  });

  @override
  // TODO: implement props
  List<Object?> get props =>[id, title, price, description, category, image];
}
