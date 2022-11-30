// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:learn_cooking/core/resources/data_state.dart';
import 'package:learn_cooking/features/category/data/datasources/remote/category_remote_data_source.dart';
import 'package:learn_cooking/features/category/data/models/category_model.dart';
import 'package:learn_cooking/features/category/domain/entities/category_entity.dart';
import 'package:learn_cooking/features/category/domain/repositories/category_repository.dart';

class CategoryRepositoryImpl extends CategoryRepository {
  final CategoryRemoteDataSource categoryRemoteDataSource;

  CategoryRepositoryImpl({
    required this.categoryRemoteDataSource,
  });

  @override
  Future<DataState<CategoryEntity>> addCategory(CategoryEntity category) async {
    try {
      Response response = await categoryRemoteDataSource.addCategory(category);
      if (response.statusCode == 200) {
        CategoryEntity categoryEntity = CategoryModel.fromJson(response.data);
        return DataSuccess(categoryEntity);
      } else {
        return const DataFailed('Something went wrong. Try again...');
      }
    } catch (error) {
      return const DataFailed('Please check your connection...');
    }
  }

  @override
  Future<DataState<CategoryEntity>> deleteCategory(String id) async {
    try {
      Response response = await categoryRemoteDataSource.deleteCategory(id);
      if (response.statusCode == 200) {
        CategoryEntity categoryEntity = CategoryModel.fromJson(response.data);
        return DataSuccess(categoryEntity);
      } else {
        return const DataFailed('Something went wrong. Try again...');
      }
    } catch (error) {
      return const DataFailed('Please check your connection...');
    }
  }

  @override
  Future<DataState<CategoryEntity>> getCategories() async {
    try {
      Response response = await categoryRemoteDataSource.getCategories();
      if (response.statusCode == 200) {
        CategoryEntity categoryEntity = CategoryModel.fromJson(response.data);
        return DataSuccess(categoryEntity);
      } else {
        return const DataFailed('Something went wrong. Try again...');
      }
    } catch (error) {
      return const DataFailed('Please check your connection...');
    }
  }

  @override
  Future<DataState<CategoryEntity>> getCategory(String id) async {
    try {
      Response response = await categoryRemoteDataSource.getCategory(id);
      if (response.statusCode == 200) {
        CategoryEntity categoryEntity = CategoryModel.fromJson(response.data);
        return DataSuccess(categoryEntity);
      } else {
        return const DataFailed('Something went wrong. Try again...');
      }
    } catch (error) {
      return const DataFailed('Please check your connection...');
    }
  }

  @override
  Future<DataState<CategoryEntity>> updateCategory(
      CategoryEntity category) async {
    try {
      Response response =
          await categoryRemoteDataSource.updateCategory(category);
      if (response.statusCode == 200) {
        CategoryEntity categoryEntity = CategoryModel.fromJson(response.data);
        return DataSuccess(categoryEntity);
      } else {
        return const DataFailed('Something went wrong. Try again...');
      }
    } catch (error) {
      return const DataFailed('Please check your connection...');
    }
  }
}
