part of 'themes.dart';

class AppColorData {
  final Color primary;
  final Color secondary;
  final List<Color> gradient;
  final Color error;
  final Color orange;
  final Color warning;
  final Color background;
  final Color bottomNavigation;
  final Color active;
  final Color success;
  final Color inactive;
  final Color caption;
  final Color special;

  AppColorData({
    this.primary = const Color(0xFF1a77cc),
    this.secondary = const Color(0xFF016A70),
    this.gradient = const [Colors.blueAccent, Colors.blueGrey],
    this.error = Colors.red,
    this.warning = Colors.orange,
    this.background = const Color.fromARGB(255, 255, 254, 251),
    this.bottomNavigation = const Color(0xFFFEFEFE),
    this.active = Colors.blue,
    this.success = Colors.green,
    this.inactive = const Color(0xFF101010),
    this.caption = const Color(0xFF545454),
    this.special = Colors.orange,
    this.orange = const Color(0xFFf6851f),
  });
}

class AppColor {
  static AppColorData appColor = AppColorData();
}
