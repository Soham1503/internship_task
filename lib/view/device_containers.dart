import 'package:blutetooth_task/view/already_paired_devices.dart';
import 'package:blutetooth_task/view/available_device.dart';
import 'package:flutter/material.dart';

class DeviceContainers extends StatelessWidget {
  const DeviceContainers({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Device Managers",
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildContainer(
                "Connected Devices", const Icon(Icons.bluetooth_connected)),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const HomePage();
                }));
              },
              child: _buildContainer(
                "Available Devices",
                const Icon(Icons.bluetooth_audio),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const AlreadyPairedDevices();
                }));
              },
              child: _buildContainer(
                  "Already Paired Devices", const Icon(Icons.bluetooth)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContainer(String title, Icon icon) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white, // White background
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Soft shadow
            blurRadius: 10,
            offset: const Offset(0, 5), // Slight downward offset
          ),
        ],
      ),
      child: Row(
        children: [
          icon,
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
