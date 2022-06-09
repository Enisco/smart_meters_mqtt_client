import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
// import 'package:shared_preferences/shared_preferences.dart';

//Single devices widget
String commandMessage = "";
int commandDigit = 0;
var pt = '000';

//MQTT EMQX Credentials
final client =
    MqttServerClient.withPort('broker.emqx.io', 'smartmeter_client1', 1883);
var pongCount = 0, connStatus = 0;
const topic = 'SerlMeter/SmartClient1';
final builder = MqttClientPayloadBuilder();
// const subTopic = 'ParkingSystem/ReceiveFromField';
