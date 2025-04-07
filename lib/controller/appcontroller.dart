import 'dart:developer';
import 'package:get/get.dart';
import 'package:web/web.dart' as web;

class AppController extends GetxController {
  String appUrl =
      'https://github.com/jayjadhav7666/BuzzChat/releases/download/1.1/BuzzChat.apk';
  String apkName = 'BuzzChat.apk';

  Future<void> downloadApk() async {
    try {
      final anchor = web.HTMLAnchorElement()
        ..href = appUrl
        ..download = apkName;
      web.document.body!.append(anchor);
      anchor.click();
      anchor.remove();
    } catch (e) {
      log(e.toString());
    }
  }
}
