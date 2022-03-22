import '../../domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  const ProductModel(
      {int? id,
      String? title,
      double? price,
      String? description,
      String? category,
      String? image,
      // double? rating,
      // double? count
      })
      : super(
            id: id,
            title: title,
            price: price,
            description: description,
            category: category,
            image: image,
            // rating: rating,
            // count: count
      );

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      category: json['category'],
      image: json['image'],
      // rating: json['rating'],
      // count: json['count'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'description': description,
      'category': category,
      'image': image,
      // 'rating': rating,
      // 'count': count,
    };
  }
}
