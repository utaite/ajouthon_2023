import '../../../module/module.dart';

class ProgramModel extends GetModel {
  const ProgramModel({
    required this.keyword,
    required this.title,
    required this.images,
    required this.dateTime,
    required this.place,
    required this.latitude,
    required this.longitude,
    required this.url,
  });

  factory ProgramModel.empty() => _empty;

  factory ProgramModel.fromJson(json) => json is Map
      ? _empty.copyWith(
          keyword: json['keyword'],
          title: json['title'],
          images: Iterable.castFrom(json['images'] ?? const Iterable.empty()),
          dateTime: json['dateTime'],
          place: json['place'],
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
  final double latitude;
  final double longitude;
  final String url;

  static final ProgramModel _empty = ProgramModel(
    keyword: '',
    title: '',
    images: const Iterable.empty(),
    dateTime: DateTime.now(),
    place: '',
    latitude: 0,
    longitude: 0,
    url: '',
  );

  static final ProgramModel _dummy1 = _empty.copyWith(
    keyword: '수령안내',
    title: '겨울돕바',
    images: [
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/395364649_1635527736973767_736488258498725614_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xMjYweDEyNjAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=103&_nc_ohc=QQ8IVde1CKcAX9s-K5J&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MzIyMjUzMTUyNDE4ODM2OTUyNg%3D%3D.2-ccb7-5&oh=00_AfCV_02qglvNFbXpuDvjqQPp9KGZ9xKt9U_p6c9um_GKhw&oe=6542567A&_nc_sid=ee9879',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/395378478_290996583773294_726835866771612181_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xMjYweDEyNjAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=102&_nc_ohc=ZLj-_jSUVJcAX-DyQ5i&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MzIyMjUzMTUyNDE1NDY0MTY4OQ%3D%3D.2-ccb7-5&oh=00_AfAIdRot5iujNIt2XSSro_ZMPWqff7ONVWEVKbGQecoVzg&oe=65420058&_nc_sid=ee9879',
    ],
    dateTime: DateTime(2023, 11, 6, 10, 30),
    place: '제2학생회관 208호 총학생회실',
    latitude: 37.2832139,
    longitude: 127.0459682,
    url: 'https://www.instagram.com/p/Cy4u1o9v0Yh',
  );

  static final ProgramModel _dummy2 = _empty.copyWith(
    keyword: '코딩',
    title: '아주톤 2nd',
    images: [
      'https://gamy-cymbal-317.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F8d9f9564-da0c-4dd0-a215-11930f09b0a6%2F71f80bbd-743b-4b18-98fe-9059e843199e%2F%25E1%2584%258B%25E1%2585%25A1%25E1%2584%258C%25E1%2585%25AE%25E1%2584%2590%25E1%2585%25A9%25E1%2586%25AB_%25E1%2584%2591%25E1%2585%25A9%25E1%2584%2589%25E1%2585%25B3%25E1%2584%2590%25E1%2585%25A5.png?table=block&id=d61e8372-8d91-4020-9ac0-1d98bd56fd0e&spaceId=8d9f9564-da0c-4dd0-a215-11930f09b0a6&width=860&userId=&cache=v2',
    ],
    dateTime: DateTime(2023, 10, 28, 13),
    place: '팔달관 307호',
    latitude: 37.2843727,
    longitude: 127.0443767,
    url: 'https://gamy-cymbal-317.notion.site/2nd-1e2f49f434be46c9b8a05c1fb64b45f1',
  );

  static final ProgramModel _dummy3 = _empty.copyWith(
    keyword: '간식',
    title: 'KB국민 간식차',
    images: [
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/391458651_627583459574347_766266678660473027_n.jpg?stp=dst-jpg_e35_p720x720&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE3OTQuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=107&_nc_ohc=wRo9Gx64q8MAX_FwGtR&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzIxNDcyMDU3NDM0MTE0MzQzNg%3D%3D.2-ccb7-5&oh=00_AfBOfR4xpqIFWcYtKiDXNK_STQaBiKjEpo9lXjsLWGRzjg&oe=65434850&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/391251864_691399565979009_5664426131262426105_n.jpg?stp=dst-jpg_e35_p720x720&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE4MDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=109&_nc_ohc=je3EPU9CArkAX-KaSsi&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzIxNDcyMDU3NDE3MzQ2MDAxNg%3D%3D.2-ccb7-5&oh=00_AfAPGok3dXpZYqDrbdjn-w1Y1CsNb7zreZ_Oq6xlcSJ6Qw&oe=65434A52&_nc_sid=b41fef',
    ],
    dateTime: DateTime(2023, 10, 17, 11, 30),
    place: '원천관 선구자상 앞',
    latitude: 37.2835706,
    longitude: 127.0454709,
    url: 'https://www.instagram.com/p/Cyc-1Wwv6gl',
  );

  static final ProgramModel _dummy4 = _empty.copyWith(
    keyword: '간식',
    title: '중간고사 간식산업',
    images: [
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/391160221_353512293772012_5543086153858987061_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=104&_nc_ohc=KiVAVNd4AmUAX97Ofxh&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzIxMjMxMzI1MzI2NjcyMTAyNQ%3D%3D.2-ccb7-5&oh=00_AfD8aNfWgJGZ09McoYJIqauZF42ydr0O2J7f6sk1hxv4Rw&oe=6542C660&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/387799204_891049465698208_1371605351687360647_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=104&_nc_ohc=BiO_141KSEsAX9w9KyS&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzIxMjMxMzI1MzI2Njc3NjY2Mg%3D%3D.2-ccb7-5&oh=00_AfA6sgNDBpzsyVhIfNH4JWxfbqDGULN9hf9d3Su5u4IkrA&oe=6541B842&_nc_sid=b41fef',
    ],
    dateTime: DateTime(2023, 10, 16, 11),
    place: '원천관 선구자상 앞',
    latitude: 37.2823316,
    longitude: 127.0435017,
    url: 'https://www.instagram.com/p/CyUbeN_PGIT',
  );

  static final ProgramModel _dummy5 = _empty.copyWith(
    keyword: '축구',
    title: 'U-LEAGUE1\nVS 울산대학교',
    images: [
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/348868556_6328077060639764_6584881078547535571_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xMDAweDEwMDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=108&_nc_ohc=lxSzURyYe7YAX9ldUbn&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzExMDE1MTkxMjkzMDgwOTc5Mg%3D%3D.2-ccb7-5&oh=00_AfABFimkfrVo0LtHgVChI0Kf-4GhC0BFdLQ0K33CT2Bhdw&oe=654234D8&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/348767648_466537775669822_6385433222733185487_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xMDAweDEwMDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=102&_nc_ohc=-03Zzh0S4ZEAX-X7uXs&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzExMDE1MTkxMzA5MDEzOTc5MQ%3D%3D.2-ccb7-5&oh=00_AfA5r5soBJOxxfLwaPNUKMlBLzfWpfpvojrGGozco8Vitg&oe=65439143&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/348763951_641436364557612_6350522754464904729_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xMDAweDEwMDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=100&_nc_ohc=60SNHTw8WWcAX84YTIi&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzExMDE1MTkxMjkzMDc2MTg4NQ%3D%3D.2-ccb7-5&oh=00_AfAdxyQK3QYbYWChXB7C5GxI9nDoJ8iMYGT5yOwIi-_imw&oe=6543A9A0&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/348483239_815504333266419_542794095917370742_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xMDAweDEwMDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=103&_nc_ohc=ajwafozuUD8AX95I7yZ&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzExMDE1MTkxMzA3MzI5MzE3NQ%3D%3D.2-ccb7-5&oh=00_AfBLRrCCD-Ez9ACAA-ibsJ-_zvcbPzJLsRWbcjLezCtqaA&oe=654251DC&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/348650728_801965221483679_5009562825222255244_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xMDAweDEwMDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=111&_nc_ohc=VLi1iaFTiXUAX_8-J5F&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzExMDE1MTkxMjkyMjUxODA5OA%3D%3D.2-ccb7-5&oh=00_AfCudBNnVM19tOAlrWChTdnQPC2wnPVYnOI1S0zB-b1bDg&oe=654305CC&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/348479029_3473437686263494_8079468421808079526_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xMDAweDEwMDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=110&_nc_ohc=hhy5CG4h7WQAX8w340Z&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzExMDE1MTkxMjkyMjM2MjM2MQ%3D%3D.2-ccb7-5&oh=00_AfAJOGhRdYpWgBkvgnU-D_meNlU-3ur50PmsUw0GDFpksw&oe=6542B1A7&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/349096908_792467182390112_2068799196003436548_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xMDAweDEwMDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=108&_nc_ohc=M9zFmjRuvU4AX96_BXs&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzExMDE1MTkxMjkzMDgyNDg1Mg%3D%3D.2-ccb7-5&oh=00_AfDnEITMgM31eibCkF63oSOK4uaXp-Qru2Y--hKojJSjRA&oe=6541FE47&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/348654158_698360572299805_2949374674584337420_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xMDAweDEwMDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=101&_nc_ohc=v-XeEHvgRl8AX-lDhoz&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzExMDE1MTkxMzIxNjA5MzIwNQ%3D%3D.2-ccb7-5&oh=00_AfAd7ZdKsH-2lwwgSsP9Ghyzo7R0JmhxCZZCyKzks8HNUQ&oe=654315EF&_nc_sid=b41fef',
    ],
    dateTime: DateTime(2023, 6, 12, 12),
    place: '인조구장',
    latitude: 37.2807991,
    longitude: 127.0443178,
    url: 'https://www.instagram.com/p/CsperD-Phdy',
  );

  static final ProgramModel _dummy6 = _empty.copyWith(
    keyword: '행사',
    title: '원천대동제',
    images: [
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/346022043_1617413905425732_5208421946246520637_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xMDgweDEwODAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=100&_nc_ohc=cD2iGm476XMAX_hCeCZ&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzEwMDI0NjI3ODk5MzYyNzE4OA%3D%3D.2-ccb7-5&oh=00_AfDTTDk3mrDRm8e_AwBR8OCwumVSu5pPJwN_Z4zo6cwRBQ&oe=65415A46&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/347148406_598432835574114_1153185287579417970_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=106&_nc_ohc=4_r4dCCAD6UAX-wRjb0&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzEwNDU0MzE3NzI4MTUyMzk5OQ%3D%3D.2-ccb7-5&oh=00_AfCQVB2NE4043lHayH-6UqDLT6hVT0GUZtL5u_LT05hFlg&oe=6542B6F3&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/347043456_566417102242891_8283356562518222400_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=107&_nc_ohc=DAdGVi-_wggAX_6xRox&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzEwNDU0MzE3NzI5ODI1ODg1Mg%3D%3D.2-ccb7-5&oh=00_AfDVWw0Maznvmx79-qr7wdJ5wHBqxM_b99MJ5brzhnLb7g&oe=654213C6&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/347111999_1236814980288824_4437530658851386333_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=108&_nc_ohc=-j4HIqQQV8kAX9oJrUf&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzEwNDU0MzE3NzI4OTg2Njk0Mg%3D%3D.2-ccb7-5&oh=00_AfBMnEXpFjiPqBaNGnoMqzwI9u0C7uqT5ojqC1xO73RkUg&oe=6542B6F0&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/347047390_571643464839307_589954442784004293_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=107&_nc_ohc=TPqexWA5GCEAX_LXc-g&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzEwNDU0MzE3NzI4OTk2NjU4Nw%3D%3D.2-ccb7-5&oh=00_AfCQh7dy9da-u-nk2tCPVV25HpneUg6scwAsGIud2jovxA&oe=65428664&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/347060104_768423361412920_3058278780304810812_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=104&_nc_ohc=IMyVy5jNc-0AX90cW0r&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzEwNDU0MzE3NzI5ODE3OTc0OA%3D%3D.2-ccb7-5&oh=00_AfBQ064kCC33LevtSLG_CsboiditMbUqQ_n4jGkxiZEY-w&oe=65429299&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/347045865_568322788761079_212629896499925546_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=107&_nc_ohc=wlficsrYDdUAX_Dqva9&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzEwNDU0MzE3NzM2NTQ4NTE1Mg%3D%3D.2-ccb7-5&oh=00_AfCT2vrDXwLgG6N6gi02GB2K76vTQ63TTa8dC0_QzoMQaw&oe=6542899D&_nc_sid=b41fef',
    ],
    dateTime: DateTime(2023, 5, 23, 18, 30),
    place: '노천극장',
    latitude: 37.2818336,
    longitude: 127.0454634,
    url: 'https://www.instagram.com/p/CsGSZCfpEg0',
  );

  static final ProgramModel _dummy7 = _empty.copyWith(
    keyword: '수령안내',
    title: '야구점퍼',
    images: [
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/343732629_763715931817930_1885321971726817109_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=110&_nc_ohc=NCUP-R57uIQAX8hcdUZ&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzA5MDY4NTI1MDYwMzEwMTk3OA%3D%3D.2-ccb7-5&oh=00_AfADdpgwpQIgceekEsYhmHg9t8NpJDiP8R8iN_SIzfct4w&oe=65436691&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/343434610_1218027685751072_92588826369963929_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=108&_nc_ohc=fHfgXn-QiAEAX9WBhk3&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzA5MDY4NTI1MDYxMTcwMDE3NA%3D%3D.2-ccb7-5&oh=00_AfDgd2Qp3rJp2tN_sK8pkxWRlfn5C5LYJA7QreEcGdUkoQ&oe=65434BC5&_nc_sid=b41fef',
    ],
    dateTime: DateTime(2023, 5, 1, 10, 30),
    place: '제2학생회관 208호 총학생회실',
    latitude: 37.2831139,
    longitude: 127.0459682,
    url: 'https://www.instagram.com/p/CrkUd2dvLHP',
  );

  static final ProgramModel _dummy8 = _empty.copyWith(
    keyword: '조식',
    title: '천원의 아침밥',
    images: [
      'https://scontent.cdninstagram.com/v/t51.2885-15/342039593_607389384640953_7045051216255433005_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE3MjUuc2RyIn0&_nc_ht=scontent.cdninstagram.com&_nc_cat=109&_nc_ohc=E1xkua15ViAAX9L_lQL&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzA4NTA1ODc5NzI0ODIzMjU0OQ%3D%3D.2-ccb7-5&oh=00_AfDMB7UdB1KSAuINmTWi2gFIdW_K1gnYCGVU2uc38rFBLw&oe=6542D6FE&_nc_sid=10d13b',
    ],
    dateTime: DateTime(2023, 4, 24, 8),
    place: '기숙사식당',
    latitude: 37.2845072,
    longitude: 127.0458133,
    url: 'https://www.instagram.com/p/CrQVKF5LLxl',
  );

  static final ProgramModel _dummy9 = _empty.copyWith(
    keyword: '기념식',
    title: '개교 50주년 기념식',
    images: [
      'https://scontent.cdninstagram.com/v/t51.2885-15/340477687_907918770419239_6464875640093754337_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent.cdninstagram.com&_nc_cat=107&_nc_ohc=xf9Iih3m90IAX-PwBU0&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzA3NzQ4NDQ5MDQxOTgzMDY1NA%3D%3D.2-ccb7-5&oh=00_AfBaykZoVf3No4TpyPY-Zl-2hlfxvtsPqtz5FTIbUqNgog&oe=65429BAE&_nc_sid=10d13b',
    ],
    dateTime: DateTime(2023, 4, 12, 14),
    place: '연암관 1층 대강당',
    latitude: 37.2821187,
    longitude: 127.0476976,
    url: 'https://www.instagram.com/p/Cq1a9a9P39-',
  );

  static final ProgramModel _dummy10 = _empty.copyWith(
    keyword: '행사',
    title: '벚꽃축제\n봄이그린아주',
    images: [
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/339346656_547858810806566_2290862924205197645_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=102&_nc_ohc=-ypnplOcY5sAX_DrsG1&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzA3NDA5MzYyNjI4MDUyMTYzOQ%3D%3D.2-ccb7-5&oh=00_AfCVHYd59vBy6yUTwbgHR4uwvxV0RHi4n2ZAiIOP8o_SYA&oe=65424C90&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/339345347_5728931147235026_6485044940358143399_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=102&_nc_ohc=NHUGM0zkdx4AX_pewLg&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzA3NDA5MzYyNjEyMTAwOTI1Nw%3D%3D.2-ccb7-5&oh=00_AfB9QA5lT3GOmsYsqKkLiep30raWKeJcxwynpl_Qv1FsPQ&oe=6542FEDE&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/339490274_2237393443134661_8696095329488113015_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=101&_nc_ohc=MIMZJ6_fWOIAX8inigM&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzA3NDA5MzYyNjI0Njk4NjY0Nw%3D%3D.2-ccb7-5&oh=00_AfB8SyuE9UCdcR9avp5V-tbrUUWG2YCYtghctIO119m_RA&oe=654231A5&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/339483672_167299259559682_159537119802878515_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=110&_nc_ohc=QXjnAXolJFUAX_if75u&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzA3NDA5MzYyNjEyMTI1MzQ5Nw%3D%3D.2-ccb7-5&oh=00_AfCNF5FKcsxnNqfHf4npZigwG3JyGMRpgQEesLF9Vi8VvA&oe=654234E1&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/339669615_3327380950849095_6869467479758957593_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=103&_nc_ohc=oDvvD496xsQAX9Yhveq&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzA3NDA5MzYyNjEyMTEyMTM1Mw%3D%3D.2-ccb7-5&oh=00_AfCTqWsp7bxqYytqg4Xh1_tyrxPFYdQSr8ba-U3aUaoozw&oe=65438D4F&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/339457293_770379647977191_9072716472883146571_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=103&_nc_ohc=vBM-f40bi0QAX_crh3m&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzA3NDA5MzYyNjEyMTE4MzYzNQ%3D%3D.2-ccb7-5&oh=00_AfBlbeG5Sn5k3axynxJth830yWkkl0J8W481StKfwSRV4g&oe=6541FD3E&_nc_sid=b41fef',
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/339281847_1599266037223010_3525056550685523983_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=102&_nc_ohc=mCEPb8WviyoAX8GgRmY&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzA3NDA5MzYyNjEyOTM4NTMyMA%3D%3D.2-ccb7-5&oh=00_AfBbI7mZP4ZiZByOyd6LGPTYKddiTtgNMha8irGmnmyrnA&oe=65430450&_nc_sid=b41fef',
    ],
    dateTime: DateTime(2023, 4, 10, 10),
    place: '성호관 앞 잔디밭',
    latitude: 37.2827929,
    longitude: 127.0452487,
    url: 'https://www.instagram.com/p/Cq1a9a9P39-',
  );

  static final ProgramModel _dummy11 = _empty.copyWith(
    keyword: '채용',
    title: 'GBF로지스\n채용설명회',
    images: [
      'https://cf-ea.everytime.kr/attach/842/61772215/everytime-web-1695261879488.jpg?Expires=1698546848&Key-Pair-Id=APKAICU6XZKH23IGASFA&Signature=LOXWLshTPnfNlOf6r6Nds~m7C0PPTcvtUeHtiVqEdXsJtdnVLsa3fAap-GnqmT0j8G-wIDgGsnsl4jruZl-9CNLGKxTshzBUNZuflLyWtLHrydJfNyoyVfEbHlznsIY5L7m2cxCw4vWtUYZ4bKqba4vTgMCqwKouS09P~pRV~XbMRkiKUf2zX~xsUFFsgBBuEGQ0x7aY02V3otKT-gA7JAWuTNYgscq1xWsQbfzOfcWl2N48bg7mBACfS2gCsh5mbhIAFqVJM7eEUQ0oBwbfHybhXlodMRH5DMMS4F38d98SDCWJWSrb8iBbgK5Q54kHiM5E3hleG41LLvU54sS0ug__',
    ],
    dateTime: DateTime(2023, 9, 21, 13, 30),
    place: '다산관 강당 B115, B126호',
    latitude: 37.2829729,
    longitude: 127.0474774,
    url: 'https://forms.gle/1aRDaRZ9wi9EqJWM9',
  );

  static final ProgramModel _dummy12 = _empty.copyWith(
    keyword: '채용',
    title: '기아 신입\n채용상담회',
    images: [
      'https://cf-ea.everytime.kr/attach/832/61747376/everytime-1695172527638.jpg?Expires=1698547044&Key-Pair-Id=APKAICU6XZKH23IGASFA&Signature=ZK3Quow3AarQuMRawVzx-tUW7cdfPHteeEM9WOGCGOj9rlhWA83XqurxkzNrvNU6E54R4mQxLWoy321KXzV6c4HsTEKVOk2XiyNTNNvzIAnLizfjIX46-k53EKVcLnq8ofmAk-iXhOJV7G0JgzlB9sytAchwm1WrMp6WYVopHo~3ljzDH80ZvlgX~JUg7eEMD2n~k9F1bB1tgR7dVPy9Np4msDaaQQTS-3vjWPoQZDK8JJC86gwf-EfwjxrV8m2tHevK8SzzhjOSSutRbMuxvmwkC~som2ZdHhqeShi38~A7hkHjZ-72F5bzKfsx3ZgZ741xJHCAl45V9nOj~DQrZA__',
    ],
    dateTime: DateTime(2023, 9, 20, 10),
    place: '팔달관 1층 로비',
    latitude: 37.2844727,
    longitude: 127.0443767,
    url: 'https://everytime.kr/258790/v/316892938',
  );

  static final ProgramModel _dummy13 = _empty.copyWith(
    keyword: '채용',
    title: '삼성전자 DS부문\nAVP사업팀 채용상담회',
    images: [
      'https://cf-ea.everytime.kr/attach/832/61747376/everytime-1695172527638.jpg?Expires=1698547044&Key-Pair-Id=APKAICU6XZKH23IGASFA&Signature=ZK3Quow3AarQuMRawVzx-tUW7cdfPHteeEM9WOGCGOj9rlhWA83XqurxkzNrvNU6E54R4mQxLWoy321KXzV6c4HsTEKVOk2XiyNTNNvzIAnLizfjIX46-k53EKVcLnq8ofmAk-iXhOJV7G0JgzlB9sytAchwm1WrMp6WYVopHo~3ljzDH80ZvlgX~JUg7eEMD2n~k9F1bB1tgR7dVPy9Np4msDaaQQTS-3vjWPoQZDK8JJC86gwf-EfwjxrV8m2tHevK8SzzhjOSSutRbMuxvmwkC~som2ZdHhqeShi38~A7hkHjZ-72F5bzKfsx3ZgZ741xJHCAl45V9nOj~DQrZA__',
    ],
    dateTime: DateTime(2023, 9, 8, 9),
    place: '제2학생회관 106호 대학일자리플러스센터',
    latitude: 37.2830139,
    longitude: 127.0459682,
    url: 'https://docs.google.com/forms/d/e/1FAIpQLScGnLgdpS95Mu1NFf-8WZgXCKYma0HpdAi3M4jXOMxuaf1zhA/viewform',
  );

  static final ProgramModel _dummy14 = _empty.copyWith(
    keyword: '채용',
    title: '삼성디스플레이\n채용설명회',
    images: [
      'https://cf-ea.everytime.kr/attach/33/61348116/everytime-web-1693896662643.jpg?Expires=1698547751&Key-Pair-Id=APKAICU6XZKH23IGASFA&Signature=ML-9CNa7uMHxqQboHbNlfCuTUUbQeu5DNw90EOmAvg6UubUtrnZcSUSJ3fXN81sNqqrP2Kx5BF4c8devmlFlk0ck1milnQlOU-YmnTlTrGEnkuBnQhiVNUgJUbsuDReGaD7OxAwXdxo4XMagMVF9rVgqKyD3ld5WEIzacvpjwWUAeyu8vhRbPHpjQkbpSaDntnLFq~Rip5j6AtqtwKqnZZ3VJ9Ktv~mu5AaRqNhlKlIWclGKqsKi7N5SwAGDKqISlQ9HcDpWYCHhZa-ves43lN3WPin-sbIilkn5bcFDDxVZUQcqC5cxGQ1LBfmbwcFg2yHhAyWo4SumXpJfETCy8g__',
    ],
    dateTime: DateTime(2023, 9, 5, 16),
    place: '원천관 강당',
    latitude: 37.282904,
    longitude: 127.043419,
    url: 'https://everytime.kr/258790/v/315163021',
  );

  static final ProgramModel _dummy15 = _empty.copyWith(
    keyword: '문화행사',
    title: '도서관\n 와보면 Autumn?',
    images: [
      'https://library.ajou.ac.kr/pyxis-api/attachments/BULLETIN/77793245-b5c3-46ae-8883-9b7cfd136f9b',
    ],
    dateTime: DateTime(2023, 10, 30, 10),
    place: '중앙도서관',
    latitude: 37.2815536,
    longitude: 127.0442038,
    url: 'https://www.ajou.ac.kr/kr/ajou/notice.do?mode=view&articleNo=223880&article.offset=0&articleLimit=10',
  );

  static final ProgramModel _dummy16 = _empty.copyWith(
    keyword: '문화행사',
    title: '도구박물관\n 문화강좌',
    images: [
      'https://www.ajou.ac.kr/_attach/ajou/editor-image/2023/09/plpNriYeaKjESkpflHWeXBltze.jpeg',
    ],
    dateTime: DateTime(2023, 8, 21, 15),
    place: '율곡관 151호 영상회의실',
    latitude: 37.2822024,
    longitude: 127.0463244,
    url: 'https://forms.gle/QDorpCFNrXeNn2AH7',
  );

  static Iterable<ProgramModel> dummys() => [
        _dummy1,
        _dummy2,
        _dummy3,
        _dummy4,
        _dummy5,
        _dummy6,
        _dummy7,
        _dummy8,
        _dummy9,
        _dummy10,
        _dummy11,
        _dummy12,
        _dummy13,
        _dummy14,
        _dummy15,
        _dummy16,
      ];

  @override
  bool get isEmpty => this == _empty;

  @override
  ProgramModel copyWith({
    String? keyword,
    String? title,
    Iterable<String>? images,
    DateTime? dateTime,
    String? place,
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
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        url: url ?? this.url,
      );

  @override
  List<Object?> get props => [keyword, title, images, dateTime, place, latitude, longitude, url];

  @override
  String toString() => 'keyword: $keyword title: $title images: $images dateTime: $dateTime place: $place latitude: $latitude longitude: $longitude url: $url';
}
