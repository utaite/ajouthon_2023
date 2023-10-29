import '../../module/module.dart';

class KeywordPageModel extends GetModel {
  const KeywordPageModel({
    required this.recommendKeywords,
    required this.keywords,
    required this.text,
  });

  factory KeywordPageModel.empty() => _empty;

  final Iterable<String> recommendKeywords;
  final Iterable<String> keywords;
  final String text;

  static const KeywordPageModel _empty = KeywordPageModel(
    recommendKeywords: Iterable.empty(),
    keywords: Iterable.empty(),
    text: '',
  );

  @override
  bool get isEmpty => this == _empty;

  @override
  KeywordPageModel copyWith({
    Iterable<String>? recommendKeywords,
    Iterable<String>? keywords,
    String? text,
  }) =>
      KeywordPageModel(
        recommendKeywords: recommendKeywords ?? this.recommendKeywords,
        keywords: keywords ?? this.keywords,
        text: text ?? this.text,
      );

  @override
  List<Object?> get props => [recommendKeywords, keywords, text];

  @override
  String toString() => 'recommendKeywords: $recommendKeywords keywords: $keywords text: $text';
}
