import 'package:apitask/Helpers/dio_helper.dart';
import 'package:apitask/products_cubit/cubit.dart';
import 'package:apitask/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  DioHelper.init();
  runApp(const MyAPI());
}

class MyAPI extends StatelessWidget {
  const MyAPI({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit()..getProducts(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
