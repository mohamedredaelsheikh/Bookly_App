import 'package:booky_app/core/functions/custom_snake_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> lounchCustomUrl(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    } else {
      customSnakeBar(context, "Cannot launch this$url");
    }
  }
}
