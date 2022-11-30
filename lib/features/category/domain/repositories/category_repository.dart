import 'package:learn_cooking/core/resources/data_state.dart';
import 'package:learn_cooking/features/category/domain/entities/category_entity.dart';

abstract class CategoryRepository {
  Future<DataState<CategoryEntity>> getCategories();
  Future<DataState<CategoryEntity>> getCategory(String id);
  Future<DataState<CategoryEntity>> addCategory(CategoryEntity category);
  Future<DataState<CategoryEntity>> updateCategory(CategoryEntity category);
  Future<DataState<CategoryEntity>> deleteCategory(String id);
}
