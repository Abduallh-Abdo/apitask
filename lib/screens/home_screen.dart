import 'package:apitask/products_cubit/cubit.dart';
import 'package:apitask/products_cubit/states.dart';
import 'package:apitask/widgets/build_products.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductCubit, ProductsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return ConditionalBuilder(
            condition: ProductCubit.get(context).allProductModel != null,
            fallback: (context) =>
                const Center(child: CircularProgressIndicator()),
            builder: (context) {
              return Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: const Text(
                    'Shop',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                body: BuildProducts(ProductCubit.get(context).allProductModel!),
              );
            });
      },
    );
  }
}
