import 'package:apitask/Helpers/dio_helper.dart';
import 'package:apitask/api_const/end_points.dart';
import 'package:apitask/models/get_product.dart';
import 'package:apitask/products_cubit/states.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCubit extends Cubit<ProductsStates> {
  ProductCubit() : super(ProductsInitialState());

  static ProductCubit get(context) => BlocProvider.of(context);
  GetAllProductModel? allProductModel;


  void getProducts() async {
    emit(GetProductsLodaingState());
    try {
      Response response = await DioHelper.dio.get(
        EndPoints.products,
      );
      Map<String, dynamic> responseData = response.data;
      allProductModel = GetAllProductModel.fromJson(responseData);
      // pro = response.data['products']
      //     .map<GetAllProductModel>(
      //         (element) => GetAllProductModel.fromJson(element))
      //     .toList();
      // print(allProductModel.toString());
      // print(responseData['products'][0]['title']);

      emit(GetProductsSuccessState());
    } catch (e) {
      print(e.toString());
      emit(GetProductsErrorState());
    }
  }

  void getCategories() async {
    emit(CategoriesLodaingState());
    DioHelper.dio.get(EndPoints.categories).then((value) {
      emit(CategoriesSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(CategoriesErrorState());
    });
  }
}
