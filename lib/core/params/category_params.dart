import 'package:equatable/equatable.dart';
import 'package:learn_cooking/features/category/domain/entities/category_entity.dart';

class CategoryParams extends Equatable {
  final CategoryEntity categoryEntity;

  const CategoryParams({
    required this.categoryEntity,
  });

  @override
  List<Object?> get props => [categoryEntity];
}
