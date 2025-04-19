import 'dart:convert';
import 'package:geocam_news/data/models/base/article.dart';
import 'package:get_storage/get_storage.dart';
import 'package:geocam_news/engine/engine.dart';

abstract class Sessions {
  static final box = GetStorage();

  static Future clear() async => await GetStorage().erase();

  static Future setImage(String image) async =>
      box.write(SessionKeys.image, image);
  static Future setLatlng(String latLng) async =>
      box.write(SessionKeys.latLng, latLng);

  static Future<void> setBookmarkArticle(Article article, bool isAdd) async {
    String data = Sessions.getBookmarkArticle() ?? '[]';

    // Decode existing articles
    List<Article> oldList =
        (jsonDecode(data) as List).map((e) => Article.fromJson(e)).toList();

    // Hapus duplikat berdasarkan URL
    oldList.removeWhere((e) => e.urlToImage == article.urlToImage);

    if (isAdd) {
      oldList.add(article);
    }

    await box.write(
      SessionKeys.article,
      jsonEncode(oldList.map((e) => e.toJson()).toList()),
    );
  }

  static String? getBookmarkArticle() => box.read<String>(SessionKeys.article);
  static String? getLatlong() => box.read<String>(SessionKeys.latLng);

  static Future setToken(String token) async =>
      box.write(SessionKeys.token, token);
  static Future setUserData(String userData) async =>
      box.write(SessionKeys.userData, userData);
  static String? getUserData() => box.read<String>(SessionKeys.userData);
  static String? getToken() => box.read<String>(SessionKeys.token);

  static Future setTheme(Map<String, dynamic> theme) async =>
      box.write(SessionKeys.theme, theme);

  static Map<String, dynamic>? getTheme() =>
      box.read<Map<String, dynamic>>(SessionKeys.theme);

  static String? getImage() => box.read<String>(SessionKeys.image);

  static List<Article>? getListArticleBookmark() {
    String? data = Sessions.getBookmarkArticle();
    List<Article> article = List<Article>.from(
      jsonDecode(data ?? '[]').map((e) => Article.fromJson(e)).toList(),
    );
    return article;
  }
}
