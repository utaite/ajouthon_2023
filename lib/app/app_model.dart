import '../module/module.dart';

class AppModel extends GetModel {
  const AppModel({
    required this.keywords,
  });

  factory AppModel.empty() => _empty;

  final Iterable<String> keywords;

  static const AppModel _empty = AppModel(
    keywords: Iterable.empty(),
  );

  @override
  bool get isEmpty => this == _empty;

  @override
  AppModel copyWith({
    Iterable<String>? keywords,
  }) =>
      AppModel(
        keywords: keywords ?? this.keywords,
      );

  @override
  List<Object?> get props => [keywords];

  @override
  String toString() => 'keywords: $keywords';
}
