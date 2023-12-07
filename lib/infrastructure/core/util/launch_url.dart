import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  static Future<void> launchUrlUtil(urlToLunch) async {
    if (!await launchUrl(urlToLunch)) {
      throw Exception('Could not launch $urlToLunch');
    }
  }
}
