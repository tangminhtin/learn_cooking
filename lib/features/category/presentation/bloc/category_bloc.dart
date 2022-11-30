import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:learn_cooking/core/params/category_params.dart';
import 'package:learn_cooking/core/params/no_params.dart';
import 'package:learn_cooking/core/resources/data_state.dart';
import 'package:learn_cooking/features/category/domain/entities/category_entity.dart';
import 'package:learn_cooking/features/category/domain/usecases/add_category_usecase.dart';
import 'package:learn_cooking/features/category/domain/usecases/delete_category_usecase.dart';
import 'package:learn_cooking/features/category/domain/usecases/get_categories_usecase.dart';
import 'package:learn_cooking/features/category/domain/usecases/get_category_usecase.dart';
import 'package:learn_cooking/features/category/domain/usecases/update_category_usecase.dart';
import 'package:learn_cooking/features/category/presentation/bloc/add_category_status.dart';
import 'package:learn_cooking/features/category/presentation/bloc/delete_category_status.dart';
import 'package:learn_cooking/features/category/presentation/bloc/get_categories_status.dart';
import 'package:learn_cooking/features/category/presentation/bloc/get_category_status.dart';
import 'package:learn_cooking/features/category/presentation/bloc/update_category_status.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final GetCategoriesUseCase getCategoriesUseCase;
  final GetCategoryUseCase getCategoryUseCase;
  final AddCategoryUseCase addCategoryUseCase;
  final UpdateCategoryUseCase updateCategoryUseCase;
  final DeleteCategoryUseCase deleteCategoryUseCase;

  CategoryBloc({
    required this.getCategoriesUseCase,
    required this.getCategoryUseCase,
    required this.addCategoryUseCase,
    required this.updateCategoryUseCase,
    required this.deleteCategoryUseCase,
  }) : super(CategoryState(
          getCategoriesStatus: GetCategoriesInitial(),
          getCategoryStatus: GetCategoryInitial(),
          addCategoryStatus: AddCategoryInitial(),
          updateCategoryStatus: UpdateCategoryInitial(),
          deleteCategoryStatus: DeleteCategoryInitial(),
        )) {
    on<CategoryLoaded>(_onLoaded);
    on<CategoryGet>(_onGet);
    on<CategoryAdded>(_onAdded);
    on<CategoryUpdated>(_onUpdated);
    on<CategoryDeleted>(_onDeleted);
  }

  void _onLoaded(CategoryLoaded event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(newGetCategoriesStatus: GetCategoriesLoading()));

    DataState dataState = await getCategoriesUseCase(NoParams());

    if (dataState is DataSuccess) {
      emit(
        state.copyWith(
          newGetCategoriesStatus:
              GetCategoriesCompleted(categories: dataState.data),
        ),
      );
    }

    if (dataState is DataFailed) {
      emit(
        state.copyWith(
          newGetCategoriesStatus: GetCategoriesError(message: dataState.error!),
        ),
      );
    }
  }

  void _onGet(CategoryGet event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(newGetCategoryStatus: GetCategoryLoading()));

    DataState dataState = await getCategoryUseCase(event.id);

    if (dataState is DataSuccess) {
      emit(
        state.copyWith(
          newGetCategoryStatus:
              GetCategoryCompleted(categoryEntity: dataState.data),
        ),
      );
    }

    if (dataState is DataFailed) {
      emit(
        state.copyWith(
          newGetCategoryStatus: GetCategoryError(message: dataState.error!),
        ),
      );
    }
  }

  void _onAdded(CategoryAdded event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(newAddCategoryStatus: AddCategoryLoading()));

    DataState dataState = await addCategoryUseCase(
      CategoryParams(categoryEntity: event.categoryEntity),
    );

    if (dataState is DataSuccess) {
      emit(
        state.copyWith(
          newAddCategoryStatus:
              AddCategoryCompleted(categoryEntity: dataState.data),
        ),
      );
    }

    if (dataState is DataFailed) {
      emit(
        state.copyWith(
          newAddCategoryStatus: AddCategoryError(message: dataState.error!),
        ),
      );
    }
  }

  void _onUpdated(CategoryUpdated event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(newUpdateCategoryStatus: UpdateCategoryLoading()));

    DataState dataState = await updateCategoryUseCase(
      CategoryParams(categoryEntity: event.categoryEntity),
    );

    if (dataState is DataSuccess) {
      emit(
        state.copyWith(
          newUpdateCategoryStatus:
              UpdateCategoryCompleted(categoryEntity: dataState.data),
        ),
      );
    }

    if (dataState is DataFailed) {
      emit(
        state.copyWith(
          newUpdateCategoryStatus:
              UpdateCategoryError(message: dataState.error!),
        ),
      );
    }
  }

  void _onDeleted(CategoryDeleted event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(newDeleteCategoryStatus: DeleteCategoryLoading()));

    DataState dataState = await deleteCategoryUseCase(event.id);

    if (dataState is DataSuccess) {
      emit(
        state.copyWith(
          newDeleteCategoryStatus:
              DeleteCategoryCompleted(categoryEntity: dataState.data),
        ),
      );
    }

    if (dataState is DataFailed) {
      emit(
        state.copyWith(
          newDeleteCategoryStatus:
              DeleteCategoryError(message: dataState.error!),
        ),
      );
    }
  }
}
