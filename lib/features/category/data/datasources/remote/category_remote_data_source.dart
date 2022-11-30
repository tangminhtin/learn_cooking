import 'package:dio/dio.dart';
import 'package:learn_cooking/core/utils/constants.dart';
import 'package:learn_cooking/features/category/domain/entities/category_entity.dart';

abstract class CategoryRemoteDataSource {
  Future getCategories();
  Future getCategory(String id);
  Future addCategory(CategoryEntity category);
  Future updateCategory(CategoryEntity category);
  Future deleteCategory(String id);
}

class CategoryRemoteDataSourceImpl implements CategoryRemoteDataSource {
  final Dio _dio = Dio();

  @override
  Future addCategory(CategoryEntity category) async {
    final response = await _dio.post(
      '${Constants.baseUrl}/categories.json',
      data: {
        "title": category.title,
        "image": category.image,
      },
    );

    return response;
  }

  @override
  Future deleteCategory(String id) async {
    final response =
        await _dio.delete('${Constants.baseUrl}/categories/$id.json');
    return response;
  }

  @override
  Future getCategories() async {
    final response = await _dio.get('${Constants.baseUrl}/categories.json');
    return response;
  }

  @override
  Future getCategory(String id) async {
    final response = await _dio.get('${Constants.baseUrl}/categories/$id.json');
    return response;
  }

  @override
  Future updateCategory(CategoryEntity category) async {
    final response = await _dio.patch(
      '${Constants.baseUrl}/categories/${category.id}.json',
      data: {
        "title": category.title,
        "image": category.image,
      },
    );
    return response;
  }
}
