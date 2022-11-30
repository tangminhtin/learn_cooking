import 'package:equatable/equatable.dart';

import 'package:learn_cooking/features/category/domain/entities/category_entity.dart';

abstract class GetCategoryStatus extends Equatable {}

class GetCategoryInitial extends GetCategoryStatus {
  @override
  List<Object?> get props => [];
}

class GetCategoryLoading extends GetCategoryStatus {
  @override
  List<Object?> get props => [];
}

class GetCategoryCompleted extends GetCategoryStatus {
  final CategoryEntity categoryEntity;

  GetCategoryCompleted({
    required this.categoryEntity,
  });
  @override
  List<Object?> get props => [categoryEntity];
}

class GetCategoryError extends GetCategoryStatus {
  final String message;

  GetCategoryError({
    required this.message,
  });

  @override
  List<Object?> get props => [message];
}
