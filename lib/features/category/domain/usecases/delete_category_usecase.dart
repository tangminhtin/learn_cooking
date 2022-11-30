import 'package:learn_cooking/core/resources/data_state.dart';
import 'package:learn_cooking/core/usecases/usecase.dart';
import 'package:learn_cooking/features/category/domain/entities/category_entity.dart';
import 'package:learn_cooking/features/category/domain/repositories/category_repository.dart';

class DeleteCategoryUseCase extends UseCase<DataState<CategoryEntity>, String> {
  final CategoryRepository categoryRepository;

  DeleteCategoryUseCase({
    required this.categoryRepository,
  });

  @override
  Future<DataState<CategoryEntity>> call(String params) {
    return categoryRepository.deleteCategory(params);
  }
}
