import 'package:flutter/material.dart';
import '../../../domain/entities/product_entity.dart';

class ProductCard extends StatelessWidget {
  final ProductEntity productEntity;
  final VoidCallback onPressed;

  const ProductCard({Key? key, required this.productEntity, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.network(
          productEntity.image!,
          height: 48,
          width: 48,
          fit: BoxFit.fill,
          loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) return child;
            return CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
            );
          },
        ),
        title: Column(
          children: [
            Text(productEntity.title!),
            ElevatedButton(onPressed: onPressed, child: const Text('Add to Cart'))
          ],
        ),
        trailing: Text(productEntity.price.toString()),
      ),
    );
  }
}
