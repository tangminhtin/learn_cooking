import 'package:learn_cooking/core/params/no_params.dart';
import 'package:learn_cooking/core/resources/data_state.dart';
import 'package:learn_cooking/core/usecases/usecase.dart';
import 'package:learn_cooking/features/category/domain/entities/category_entity.dart';
import 'package:learn_cooking/features/category/domain/repositories/category_repository.dart';

class GetCategoriesUseCase
    extends UseCase<DataState<CategoryEntity>, NoParams> {
  final CategoryRepository categoryRepository;

  GetCategoriesUseCase({
    required this.categoryRepository,
  });

  @override
  Future<DataState<CategoryEntity>> call(NoParams params) {
    return categoryRepository.getCategories();
  }
}
