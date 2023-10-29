import 'package:flutter/material.dart';

import '../../../module/module.dart';

class ProgramModel extends GetModel {
  const ProgramModel({
    required this.keyword,
    required this.title,
    required this.images,
    required this.dateTime,
    required this.place,
    required this.color,
    required this.latitude,
    required this.longitude,
    required this.url,
  });

  factory ProgramModel.empty() => _empty;

  factory ProgramModel.dummy1() => _dummy1;

  factory ProgramModel.dummy2() => _dummy2;

  factory ProgramModel.fromJson(json) => json is Map
      ? _empty.copyWith(
          keyword: json['keyword'],
          title: json['title'],
          images: Iterable.castFrom(json['images'] ?? const Iterable.empty()),
          dateTime: json['dateTime'],
          place: json['place'],
          color: json['color'],
          latitude: json['latitude'],
          longitude: json['longitude'],
          url: json['url'],
        )
      : _empty;

  final String keyword;
  final String title;
  final Iterable<String> images;
  final DateTime dateTime;
  final String place;
  final Color color;
  final double latitude;
  final double longitude;
  final String url;

  static final ProgramModel _empty = ProgramModel(
    keyword: '',
    title: '',
    images: const Iterable.empty(),
    dateTime: DateTime.now(),
    place: '',
    color: Colors.transparent,
    latitude: 0,
    longitude: 0,
    url: '',
  );

  static final ProgramModel _dummy1 = _empty.copyWith(
    keyword: '행사',
    title: '원천대동제',
    images: [
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/347148406_598432835574114_1153185287579417970_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=106&_nc_ohc=4_r4dCCAD6UAX-wRjb0&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzEwNDU0MzE3NzI4MTUyMzk5OQ%3D%3D.2-ccb7-5&oh=00_AfCQVB2NE4043lHayH-6UqDLT6hVT0GUZtL5u_LT05hFlg&oe=6542B6F3&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/347043456_566417102242891_8283356562518222400_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=107&_nc_ohc=DAdGVi-_wggAX_6xRox&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzEwNDU0MzE3NzI5ODI1ODg1Mg%3D%3D.2-ccb7-5&oh=00_AfDVWw0Maznvmx79-qr7wdJ5wHBqxM_b99MJ5brzhnLb7g&oe=654213C6&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/347111999_1236814980288824_4437530658851386333_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=108&_nc_ohc=-j4HIqQQV8kAX9oJrUf&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzEwNDU0MzE3NzI4OTg2Njk0Mg%3D%3D.2-ccb7-5&oh=00_AfBMnEXpFjiPqBaNGnoMqzwI9u0C7uqT5ojqC1xO73RkUg&oe=6542B6F0&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/347047390_571643464839307_589954442784004293_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=107&_nc_ohc=TPqexWA5GCEAX_LXc-g&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzEwNDU0MzE3NzI4OTk2NjU4Nw%3D%3D.2-ccb7-5&oh=00_AfCQh7dy9da-u-nk2tCPVV25HpneUg6scwAsGIud2jovxA&oe=65428664&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/347060104_768423361412920_3058278780304810812_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=104&_nc_ohc=IMyVy5jNc-0AX90cW0r&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzEwNDU0MzE3NzI5ODE3OTc0OA%3D%3D.2-ccb7-5&oh=00_AfBQ064kCC33LevtSLG_CsboiditMbUqQ_n4jGkxiZEY-w&oe=65429299&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/347045865_568322788761079_212629896499925546_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=107&_nc_ohc=wlficsrYDdUAX_Dqva9&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzEwNDU0MzE3NzM2NTQ4NTE1Mg%3D%3D.2-ccb7-5&oh=00_AfCT2vrDXwLgG6N6gi02GB2K76vTQ63TTa8dC0_QzoMQaw&oe=6542899D&_nc_sid=b41fef',
    ],
    dateTime: DateTime(2023, 5, 23, 18, 30),
    place: '성호관 앞 잔디밭',
    color: Colors.deepPurple,
    latitude: 37.2816819,
    longitude: 127.0454154,
    url: 'https://www.instagram.com/p/CsVjZMyONTZ/',
  );

  static final ProgramModel _dummy2 = _empty.copyWith(
    keyword: '개발',
    title: '아주톤 2nd',
    images: [
      'https://gamy-cymbal-317.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F8d9f9564-da0c-4dd0-a215-11930f09b0a6%2F71f80bbd-743b-4b18-98fe-9059e843199e%2F%25E1%2584%258B%25E1%2585%25A1%25E1%2584%258C%25E1%2585%25AE%25E1%2584%2590%25E1%2585%25A9%25E1%2586%25AB_%25E1%2584%2591%25E1%2585%25A9%25E1%2584%2589%25E1%2585%25B3%25E1%2584%2590%25E1%2585%25A5.png?table=block&id=d61e8372-8d91-4020-9ac0-1d98bd56fd0e&spaceId=8d9f9564-da0c-4dd0-a215-11930f09b0a6&width=860&userId=&cache=v2',
    ],
    dateTime: DateTime(2023, 10, 28, 13),
    place: '팔달관 307호',
    latitude: 37.2843727,
    longitude: 127.0443767,
    color: colorPrimary,
    url: 'https://gamy-cymbal-317.notion.site/2nd-1e2f49f434be46c9b8a05c1fb64b45f1',
  );

  @override
  bool get isEmpty => this == _empty;

  @override
  ProgramModel copyWith({
    String? keyword,
    String? title,
    Iterable<String>? images,
    DateTime? dateTime,
    String? place,
    Color? color,
    double? latitude,
    double? longitude,
    String? url,
  }) =>
      ProgramModel(
        keyword: keyword ?? this.keyword,
        title: title ?? this.title,
        images: images ?? this.images,
        dateTime: dateTime ?? this.dateTime,
        place: place ?? this.place,
        color: color ?? this.color,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        url: url ?? this.url,
      );

  @override
  List<Object?> get props => [keyword, title, images, dateTime, place, color, latitude, longitude, url];

  @override
  String toString() =>
      'keyword: $keyword title: $title images: $images dateTime: $dateTime place: $place color: $color latitude: $latitude longitude: $longitude url: $url';
}
