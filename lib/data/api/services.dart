import 'dart:developer';
import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rs_ui/data/api/configure.dart';
import 'package:rs_ui/data/api/error_handler.dart';
import 'package:rs_ui/data/api/response.dart';
import 'package:rs_ui/data/models/base/user.dart';
import 'package:rs_ui/engine/helpers/sessions.dart';

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

  static Future<ApiResponse<User>> register(
    BuildContext context, {
    required Map<String, dynamic> params,
  }) async {
    return await ApiConfigure(context)
        .post('auth/register', params: params)
        .then((result) => ApiResponse<User>.fromJson(result.data))
        .handler((error) => ApiResponse<User>.onError(error));
  }

  static Future<ApiResponse<User>> login(
    BuildContext context, {
    required String email,
    required String password,
  }) async {
    return await ApiConfigure(context)
        .post('auth/login', params: {"email": email, "password": password})
        .then((result) => ApiResponse<User>.fromJson(result.data))
        .handler((error) => ApiResponse<User>.onError(error));
  }

  static Future<ApiResponse> addToCart(
    BuildContext context, {
    required int idProduct,
    required int quantity,
  }) async {
    return await ApiConfigure(context)
        .post(
          'cart/add_to_cart',
          params: {
            "id_user": Sessions.getUserId(),
            "id_product": idProduct,
            "quantity": quantity,
          },
        )
        .then((result) => ApiResponse.fromJson(result.data))
        .handler((error) => ApiResponse.onError(error));
  }

  static Future<ApiResponse> removeFromCart(
    BuildContext context, {
    required int idCart,
  }) async {
    return await ApiConfigure(context)
        .post('cart/remove_from_cart', params: {"id": idCart})
        .then((result) => ApiResponse.fromJson(result.data))
        .handler((error) => ApiResponse.onError(error));
  }

  static Future<ApiResponse> payment(
    BuildContext context, {
    required List<int> idCart,
  }) async {
    return await ApiConfigure(context)
        .post('cart/payment', params: {"cart_ids": idCart})
        .then((result) => ApiResponse.fromJson(result.data))
        .handler((error) => ApiResponse.onError(error));
  }
}
