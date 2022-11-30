part of 'category_bloc.dart';

abstract class CategoryEvent extends Equatable {
  const CategoryEvent();

  @override
  List<Object> get props => [];
}

class CategoryLoaded extends CategoryEvent {}

class CategoryGet extends CategoryEvent {
  final String id;

  const CategoryGet({
    required this.id,
  });

  @override
  List<Object> get props => [id];
}

class CategoryAdded extends CategoryEvent {
  final CategoryEntity categoryEntity;

  const CategoryAdded({
    required this.categoryEntity,
  });

  @override
  List<Object> get props => [categoryEntity];
}

class CategoryUpdated extends CategoryEvent {
  final CategoryEntity categoryEntity;

  const CategoryUpdated({
    required this.categoryEntity,
  });

  @override
  List<Object> get props => [categoryEntity];
}

class CategoryDeleted extends CategoryEvent {
  final String id;

  const CategoryDeleted({
    required this.id,
  });

  @override
  List<Object> get props => [id];
}
