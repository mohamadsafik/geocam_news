import 'dart:developer';
import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geocam_news/data/api/configure.dart';
import 'package:geocam_news/data/api/error_handler.dart';
import 'package:geocam_news/data/api/response.dart';
import 'package:geocam_news/data/models/base/article.dart';
import 'package:geocam_news/data/models/base/user.dart';
import 'package:geocam_news/engine/helpers/sessions.dart';

class ApiService {
  static Future<ApiResponse<String>> getToken(BuildContext context) async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    String deviceId;
    String brand;

    if (kIsWeb) {
      WebBrowserInfo webBrowserInfo = await deviceInfo.webBrowserInfo;
      deviceId =
          webBrowserInfo.userAgent ??
          webBrowserInfo.appVersion ??
          webBrowserInfo.appCodeName ??
          'Website';
      brand = webBrowserInfo.browserName.name;
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      deviceId = iosInfo.identifierForVendor ?? iosInfo.systemName;
      brand = 'iOS - ${iosInfo.model}';

      log(iosInfo.name);
      log(iosInfo.systemName);
      log(iosInfo.systemVersion);
      log(iosInfo.model);
      log(iosInfo.localizedModel);
      log('${iosInfo.identifierForVendor}');
      log('${iosInfo.isPhysicalDevice}');
      log(iosInfo.utsname.sysname);
      log(iosInfo.utsname.nodename);
      log(iosInfo.utsname.release);
      log(iosInfo.utsname.version);
      log(iosInfo.utsname.machine);
    } else {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      deviceId = androidInfo.id;
      brand = '${androidInfo.brand} - ${androidInfo.model}';
    }

    return await ApiConfigure(context)
        .post('Connect/token', params: {"device_id": deviceId, "brand": brand})
        .then((result) => ApiResponse<String>.fromJson(result.data))
        .handler((error) => ApiResponse<String>.onError(error));
  }

  static Future<ApiResponseList<Article>> getNews(
    BuildContext context, {
    required List<int> idCart,
  }) async {
    return await ApiConfigure(context)
        .get(
          'v2/everything?q=Apple&from=2025-03-19&sortBy=popularity&apiKey=09d1c5799e4b4102905dfafc09e67c8e',
          // params: {"cart_ids": idCart},
        )
        .then((result) => ApiResponseList<Article>.fromJson(result.data))
        .handler((error) => ApiResponseList<Article>.onError(error));
  }

  //
}
