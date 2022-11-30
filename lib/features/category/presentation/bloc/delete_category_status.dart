import 'package:equatable/equatable.dart';

import 'package:learn_cooking/features/category/domain/entities/category_entity.dart';

abstract class DeleteCategoryStatus extends Equatable {}

class DeleteCategoryInitial extends DeleteCategoryStatus {
  @override
  List<Object?> get props => [];
}

class DeleteCategoryLoading extends DeleteCategoryStatus {
  @override
  List<Object?> get props => [];
}

class DeleteCategoryCompleted extends DeleteCategoryStatus {
  final CategoryEntity categoryEntity;

  DeleteCategoryCompleted({
    required this.categoryEntity,
  });
  @override
  List<Object?> get props => [categoryEntity];
}

class DeleteCategoryError extends DeleteCategoryStatus {
  final String message;

  DeleteCategoryError({
    required this.message,
  });

  @override
  List<Object?> get props => [message];
}
