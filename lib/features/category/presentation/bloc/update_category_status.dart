import 'package:equatable/equatable.dart';

import 'package:learn_cooking/features/category/domain/entities/category_entity.dart';

abstract class UpdateCategoryStatus extends Equatable {}

class UpdateCategoryInitial extends UpdateCategoryStatus {
  @override
  List<Object?> get props => [];
}

class UpdateCategoryLoading extends UpdateCategoryStatus {
  @override
  List<Object?> get props => [];
}

class UpdateCategoryCompleted extends UpdateCategoryStatus {
  final CategoryEntity categoryEntity;

  UpdateCategoryCompleted({
    required this.categoryEntity,
  });
  @override
  List<Object?> get props => [categoryEntity];
}

class UpdateCategoryError extends UpdateCategoryStatus {
  final String message;

  UpdateCategoryError({
    required this.message,
  });

  @override
  List<Object?> get props => [message];
}
