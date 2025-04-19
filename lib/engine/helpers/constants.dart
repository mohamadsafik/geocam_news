abstract class APIResult {
  static const String success = "ok";
  static const String failed = "error";
  static const int invalid = 401;
}

abstract class SessionKeys {
  static const String token = 'token';
  static const String theme = 'theme';
  static const String userData = 'user';
  static const String image = 'image';
  static const String article = 'article';
  static const String latLng = 'latLng';
}
