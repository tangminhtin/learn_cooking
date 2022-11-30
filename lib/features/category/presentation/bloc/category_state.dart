part of 'category_bloc.dart';

class CategoryState extends Equatable {
  final GetCategoriesStatus getCategoriesStatus;
  final GetCategoryStatus getCategoryStatus;
  final AddCategoryStatus addCategoryStatus;
  final UpdateCategoryStatus updateCategoryStatus;
  final DeleteCategoryStatus deleteCategoryStatus;

  const CategoryState({
    required this.getCategoriesStatus,
    required this.getCategoryStatus,
    required this.addCategoryStatus,
    required this.updateCategoryStatus,
    required this.deleteCategoryStatus,
  });

  CategoryState copyWith({
    GetCategoriesStatus? newGetCategoriesStatus,
    GetCategoryStatus? newGetCategoryStatus,
    AddCategoryStatus? newAddCategoryStatus,
    UpdateCategoryStatus? newUpdateCategoryStatus,
    DeleteCategoryStatus? newDeleteCategoryStatus,
  }) {
    return CategoryState(
      getCategoriesStatus: newGetCategoriesStatus ?? getCategoriesStatus,
      getCategoryStatus: newGetCategoryStatus ?? getCategoryStatus,
      addCategoryStatus: newAddCategoryStatus ?? addCategoryStatus,
      updateCategoryStatus: newUpdateCategoryStatus ?? updateCategoryStatus,
      deleteCategoryStatus: newDeleteCategoryStatus ?? deleteCategoryStatus,
    );
  }

  @override
  List<Object?> get props => [
        getCategoriesStatus,
        getCategoryStatus,
        addCategoryStatus,
        updateCategoryStatus,
        deleteCategoryStatus,
      ];
}
