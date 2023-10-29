import '../../../module/module.dart';

class KeywordTextModel extends GetModel {
  const KeywordTextModel({
    required this.keywordTexts,
  });

  factory KeywordTextModel.empty() => _empty;

  factory KeywordTextModel.dummy() => _dummy;

  factory KeywordTextModel.fromJson(json) => json is Map
      ? _empty.copyWith(
          keywordTexts: Iterable.castFrom(json['keywordTexts'] ?? const Iterable.empty()),
        )
      : _empty;

  final Iterable<String> keywordTexts;

  static const KeywordTextModel _empty = KeywordTextModel(
    keywordTexts: Iterable.empty(),
  );

  static final KeywordTextModel _dummy = _empty.copyWith(
    keywordTexts: ['개발', '행사'],
  );

  @override
  bool get isEmpty => this == _empty;

  @override
  KeywordTextModel copyWith({
    Iterable<String>? keywordTexts,
  }) =>
      KeywordTextModel(
        keywordTexts: keywordTexts ?? this.keywordTexts,
      );

  @override
  List<Object?> get props => [keywordTexts];

  @override
  String toString() => 'keywordTexts: $keywordTexts';
}
