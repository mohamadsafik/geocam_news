import 'dart:async';
import 'dart:developer';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

class MqttService {
  late MqttServerClient _client;
  late String _clientId;

  final StreamController<String> _messageStreamController =
      StreamController<String>.broadcast();
  Stream<String> get messageStream => _messageStreamController.stream;

  MqttService() {
    _clientId = 'Mqtt_MyClientUniqueId2';
    _client = MqttServerClient(
      '7895f20b4c4342c5bbbcaca63d7e37f3.s1.eu.hivemq.cloud',
      _clientId,
    );
    _client.logging(on: true);
    _client.port = 8883;
    _client.keepAlivePeriod = 2;
    _client.secure = true;
    _client.setProtocolV311();

    _client.onDisconnected = _onDisconnected;
    _client.onConnected = _onConnected;
    _client.onSubscribed = _onSubscribed;
  }

  Future<bool> connect() async {
    try {
      final connMess = MqttConnectMessage()
          .withClientIdentifier(_clientId)
          .withWillTopic('test')
          .withWillMessage('ok')
          .startClean()
          .withWillQos(MqttQos.atLeastOnce);
      _client.connectionMessage = connMess;

      final status = await _client.connect('safik', 'Safik123');
      return status?.state == MqttConnectionState.connected;
    } catch (e) {
      log("MQTT connection error: $e");
      return false;
    }
  }

  void _onDisconnected() {
    log('MQTT disconnected');
  }

  void _onConnected() {
    log('MQTT connected');
    _client.subscribe("todo", MqttQos.atLeastOnce);
  }

  void _onSubscribed(String topic) {
    log('Subscribed to $topic');
  }

  void _onMessageReceived(
    List<MqttReceivedMessage<MqttMessage?>>? messageList,
  ) {
    final recMess = messageList![0].payload as MqttPublishMessage;
    final message = MqttPublishPayload.bytesToStringAsString(
      recMess.payload.message,
    );

    _messageStreamController.add(message);
  }

  Future<void> subscribeToTopic(String topic) async {
    try {
      _client.subscribe(topic, MqttQos.atLeastOnce);
      log("Subscribed to topic: $topic");

      _client.updates!.listen(_onMessageReceived);
    } catch (e) {
      log("Error subscribing to topic: $e");
    }
  }

  Future<void> disconnect() async {
    try {
      _client.disconnect();
      log("Disconnected from MQTT broker");
    } catch (e) {
      log("Error disconnecting from MQTT broker: $e");
    }
  }

  Future<void> publishMessage(String topic, String message) async {
    try {
      final builder = MqttClientPayloadBuilder();
      builder.addString(message);
      _client.publishMessage(topic, MqttQos.atLeastOnce, builder.payload!);

      log("Published message: $message to topic: $topic");
    } catch (e) {
      log("Error publishing message: $e");
    }
  }
}
