class WallPaper {
  late final String id;
  late final String created_at;
  late final String updated_at;
  late final double width;
  late final double height;
  late final String color;
  late final Urls urls;

  WallPaper(
      {required this.id,
      required this.created_at,
      required this.updated_at,
      required this.width,
      required this.height,
      required this.color,
      required this.urls});

  static WallPaper fromMap(Map<String, dynamic> map) {
    return WallPaper(
        id: map['id'],
        created_at: map['created_at'],
        updated_at: map['updated_at'],
        width: map['width'],
        height: map['height'],
        color: map['color'],
        urls: map['urls']);
  }
}

class Urls {
  late final String raw;
  late final String full;
  late final String regular;
  late final String thumb;

  Urls(
      {required this.raw,
      required this.full,
      required this.regular,
      required this.thumb});

  static Urls fromMap(Map<String, dynamic> map) {
    return Urls(
        raw: map['raw'],
        full: map['full'],
        regular: map['regular'],
        thumb: map['thumb']);
  }
}
