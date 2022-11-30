import 'package:get_it/get_it.dart';
import 'package:learn_cooking/features/category/data/datasources/remote/category_remote_data_source.dart';
import 'package:learn_cooking/features/category/data/repositories/category_repository_impl.dart';
import 'package:learn_cooking/features/category/domain/repositories/category_repository.dart';
import 'package:learn_cooking/features/category/domain/usecases/add_category_usecase.dart';
import 'package:learn_cooking/features/category/domain/usecases/delete_category_usecase.dart';
import 'package:learn_cooking/features/category/domain/usecases/get_categories_usecase.dart';
import 'package:learn_cooking/features/category/domain/usecases/get_category_usecase.dart';
import 'package:learn_cooking/features/category/domain/usecases/update_category_usecase.dart';
import 'package:learn_cooking/features/category/presentation/bloc/category_bloc.dart';

final GetIt locator = GetIt.instance;

Future<void> init() async {
  /// Bloc
  locator.registerFactory(
    () => CategoryBloc(
      getCategoriesUseCase: locator(),
      getCategoryUseCase: locator(),
      addCategoryUseCase: locator(),
      updateCategoryUseCase: locator(),
      deleteCategoryUseCase: locator(),
    ),
  );

  /// Use cases
  locator.registerSingleton(
      () => GetCategoriesUseCase(categoryRepository: locator()));
  locator.registerSingleton(
      () => GetCategoryUseCase(categoryRepository: locator()));
  locator.registerSingleton(
      () => AddCategoryUseCase(categoryRepository: locator()));
  locator.registerSingleton(
      () => UpdateCategoryUseCase(categoryRepository: locator()));
  locator.registerSingleton(
      () => DeleteCategoryUseCase(categoryRepository: locator()));

  /// Repositories
  locator.registerLazySingleton<CategoryRepository>(
      () => CategoryRepositoryImpl(categoryRemoteDataSource: locator()));

  /// Data sources
  locator.registerLazySingleton<CategoryRemoteDataSource>(
      () => CategoryRemoteDataSourceImpl());

  /// Core

  /// External
}
