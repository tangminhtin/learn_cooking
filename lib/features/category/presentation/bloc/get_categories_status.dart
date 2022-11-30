import 'package:equatable/equatable.dart';

import 'package:learn_cooking/features/category/domain/entities/category_entity.dart';

abstract class GetCategoriesStatus extends Equatable {}

class GetCategoriesInitial extends GetCategoriesStatus {
  @override
  List<Object?> get props => [];
}

class GetCategoriesLoading extends GetCategoriesStatus {
  @override
  List<Object?> get props => [];
}

class GetCategoriesCompleted extends GetCategoriesStatus {
  final List<CategoryEntity> categories;

  GetCategoriesCompleted({
    required this.categories,
  });

  @override
  List<Object?> get props => [categories];
}

class GetCategoriesError extends GetCategoriesStatus {
  final String message;

  GetCategoriesError({
    required this.message,
  });

  @override
  List<Object?> get props => [message];
}
