import 'package:blutetooth_task/controller/bluetooth_data.dart';
import 'package:blutetooth_task/view/device_containers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return BluetoothData(password: "");
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DeviceContainers(),
      ),
    );
  }
}
