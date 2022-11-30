import 'package:learn_cooking/core/params/category_params.dart';

import 'package:learn_cooking/core/resources/data_state.dart';
import 'package:learn_cooking/core/usecases/usecase.dart';
import 'package:learn_cooking/features/category/domain/entities/category_entity.dart';
import 'package:learn_cooking/features/category/domain/repositories/category_repository.dart';

class AddCategoryUseCase
    extends UseCase<DataState<CategoryEntity>, CategoryParams> {
  final CategoryRepository categoryRepository;

  AddCategoryUseCase({
    required this.categoryRepository,
  });

  @override
  Future<DataState<CategoryEntity>> call(CategoryParams params) {
    return categoryRepository.addCategory(params.categoryEntity);
  }
}
