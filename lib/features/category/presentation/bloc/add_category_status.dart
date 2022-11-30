import 'package:equatable/equatable.dart';

import 'package:learn_cooking/features/category/domain/entities/category_entity.dart';

abstract class AddCategoryStatus extends Equatable {}

class AddCategoryInitial extends AddCategoryStatus {
  @override
  List<Object?> get props => [];
}

class AddCategoryLoading extends AddCategoryStatus {
  @override
  List<Object?> get props => [];
}

class AddCategoryCompleted extends AddCategoryStatus {
  final CategoryEntity categoryEntity;

  AddCategoryCompleted({
    required this.categoryEntity,
  });
  @override
  List<Object?> get props => [categoryEntity];
}

class AddCategoryError extends AddCategoryStatus {
  final String message;

  AddCategoryError({
    required this.message,
  });

  @override
  List<Object?> get props => [message];
}
