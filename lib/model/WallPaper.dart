class WallPaper {
  String id;
  String createdAt;
  String updatedAt;
  int width;
  int height;
  String color;
  String blurHash;
  String altDescription;
  Urls urls;
  int likes;
  bool likedByUser;

  WallPaper({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.width,
    required this.height,
    required this.color,
    required this.blurHash,
    required this.altDescription,
    required this.urls,
    required this.likes,
    required this.likedByUser,
  });

  static WallPaper fromMap(Map<String, dynamic> map) {
    return WallPaper(
      id: map['id'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
      width: map['width'],
      height: map['height'],
      color: map['color'],
      blurHash: map['blurHash'],
      altDescription: map['altDescription'],
      urls: map['urls'],
      likes: map['likes'],
      likedByUser: map['likedByUser'],
    );
  }
}

class Urls {
  String raw;
  String full;
  String regular;
  String small;
  String thumb;

  Urls({
    required this.raw,
    required this.full,
    required this.regular,
    required this.small,
    required this.thumb,
  });

  static Urls fromMap(Map<String, dynamic> map) {
    return Urls(
        raw: map['raw'],
        full: map['full'],
        regular: map['regular'],
        small: map['small'],
        thumb: map['thumb']);
  }
}

class ProfileImage {
  String small;
  String medium;
  String large;

  ProfileImage({
    required this.small,
    required this.medium,
    required this.large,
  });

  static ProfileImage fromMap(Map<String, dynamic> map) {
    return ProfileImage(
        small: map['small'], medium: map['medium'], large: map['large']);
  }
}
