import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rs_ui/data/mqtt/services.dart';

import 'engine/base/app.dart';
import 'engine/configs/environment.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  // final appDocumentDir = await getApplicationDocumentsDirectory();
  // Hive.init(appDocumentDir.path);
  await Hive.initFlutter(); // Inisialisasi Hive
  await Hive.openBox('todoBox'); // Buka kotak penyimpanan
  setupLocator();
  runApp(MyApp());
}

void setupLocator() {
  // Daftarkan MqttService sebagai singleton

  GetIt.I.registerSingleton<MqttService>(MqttService());
}

class InitialApps {
  static start() async {
    await setup();
    await firebaseInit();
    // await connectMqtt();
  }

  static setup() async {
    await GetStorage.init();

    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    Environment.appVersion = packageInfo.version;
    Environment.appBuildNumber = packageInfo.buildNumber;

    initializeDateFormatting(Environment.currentLanguages.languageCode);

    observers.clear();
    observers.add(RouteObserver<PageRoute>());
  }

  static firebaseInit() async {}
  static connectMqtt() async {
    const broker =
        '7895f20b4c4342c5bbbcaca63d7e37f3.s1.eu.hivemq.cloud'; // Ganti dengan broker HiveMQ kamu
    const port = 8883;
    const clientId = 'test_flutter_client';
    const username = 'safik';
    const password = 'Safik123';

    final client = MqttServerClient(broker, clientId);
    client.port = port;
    client.secure = true;
    client.logging(on: true);
    client.keepAlivePeriod = 20;
    client.onDisconnected = () => print('Disconnected');

    // Gunakan default security context (TLS)
    final context = SecurityContext.defaultContext;
    client.securityContext = context;

    client.connectionMessage = MqttConnectMessage()
        .withClientIdentifier(clientId)
        .authenticateAs(username, password)
        .withWillQos(MqttQos.atLeastOnce);

    try {
      print('Connecting to MQTT broker...');
      await client.connect();
    } catch (e) {
      print('❌ Connection error: $e');
      client.disconnect();
      exit(-1);
    }

    if (client.connectionStatus!.state == MqttConnectionState.connected) {
      print('✅ Connected to MQTT broker!');

      // Optional: Subscribe dan Publish untuk test
      const topic = 'test/topic';
      client.subscribe(topic, MqttQos.atLeastOnce);

      final builder = MqttClientPayloadBuilder();
      builder.addString('Hello from Flutter!');
      client.publishMessage(topic, MqttQos.atLeastOnce, builder.payload!);
    } else {
      print('❌ Failed to connect: ${client.connectionStatus}');
      client.disconnect();
    }
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
