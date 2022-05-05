import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instamart/di/injector_config.dart';
import 'package:instamart/presentation/products_list/widgets/product_card.dart';

import '../bloc/products_list_bloc.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildProductsList(context);
  }

  BlocProvider<ProductsListBloc> buildProductsList(BuildContext context) {
    return BlocProvider(
      // create: (_) => sl<ProductsListBloc>(),
      create: (_) => InjectorConfig.resolve<ProductsListBloc>(),
      child: Center(
        child: BlocBuilder<ProductsListBloc, ProductsListState>(
          builder: (context, state) {
            if (state is ProductsListInitial) {
              BlocProvider.of<ProductsListBloc>(context)
                  .add(const GetAllProductsEvent());
              return const CircularProgressIndicator();
            } else if (state is Loading) {
              return const CircularProgressIndicator();
            } else if (state is Loaded) {
              return ListView(
                children: state.productsList
                    .map((product) => ProductCard(
                      productEntity: product,
                      onPressed: (){
                        BlocProvider.of<ProductsListBloc>(context).add(AddProductToCartEvent(product: product));
                      },
                  ))
                    .toList(),
              );
            } else if (state is Error) {
              return const Text('Error loading products.');
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}