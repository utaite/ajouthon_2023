import '../../module/module.dart';

class MainPageModel extends GetModel {
  const MainPageModel({
    required this.id,
  });

  factory MainPageModel.empty() => _empty;

  final int id;

  static const MainPageModel _empty = MainPageModel(
    id: 0,
  );

  @override
  bool get isEmpty => this == _empty;

  @override
  MainPageModel copyWith({
    int? id,
  }) =>
      MainPageModel(
        id: id ?? this.id,
      );

  @override
  List<Object?> get props => [id];

  @override
  String toString() => 'id: $id';
}
