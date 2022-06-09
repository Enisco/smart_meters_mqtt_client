import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SmartMeterClientApp(),
    );
  }
}

class SmartMeterClientApp extends StatefulWidget {
  const SmartMeterClientApp({Key? key}) : super(key: key);

  @override
  State<SmartMeterClientApp> createState() => _SmartMeterCLientAppState();
}

class _SmartMeterCLientAppState extends State<SmartMeterClientApp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 30, 15, 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Data Received',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                  // height: size.height * 0.7,
                  // width: size.width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.5,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: Colors.white12,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Holla',
                  style: TextStyle(
                    color: Colors.purple.shade800,
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
