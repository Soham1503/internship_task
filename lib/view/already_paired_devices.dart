import 'package:flutter/material.dart';

class AlreadyPairedDevices extends StatefulWidget {
  const AlreadyPairedDevices({super.key});

  @override
  State<AlreadyPairedDevices> createState() => _AlreadyPairedDevicesState();
}

class _AlreadyPairedDevicesState extends State<AlreadyPairedDevices> {
  List<Map>? data = [
    {"deviceName": "JSS", "deviceId": "6A:40:43:ED:71:27"},
    {"deviceName": "XECH Telliivibe Max", "deviceId": "59:FD:F9:CE:16:66"},
    {"deviceName": "OPPO Watch", "deviceId": "68:27:37:97:16:C2"},
    {"deviceName": "Mivi Fort S24", "deviceId": "4B:A9:73:9C:2D:6E"},
    {"deviceName": "realme Buds Air6 Pro", "deviceId": "84:0f:75:3C:7W:3E"},
    {"deviceName": "Rockerz 255 Arc", "deviceId": "41:42:E1:70:44:SE"},
    {"deviceName": "DSX-A410BT", "deviceId": "96:CD:73:6D:7N:3E"},
    {"deviceName": "Alcazar", "deviceId": "77:9x:00:3w:9b:6C"},
    {"deviceName": "APPLE Watch", "deviceId": "6D:D7:A7:5C:71:C2"},
    {"deviceName": "Airdopes 161", "deviceId": "40:00:00:64:97:47"},
    {"deviceName": "Boat Rockerz 269+", "deviceId": "8A:0F:CC:41:C9"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Already Paired Devices",
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: data!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.2), // Soft shadow
                              blurRadius: 10,
                              offset:
                                  const Offset(0, 5), // Slight downward offset
                            ),
                          ],
                          borderRadius: BorderRadiusDirectional.circular(20),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data![index]['deviceName'],
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            Text(
                              '${data![index]['deviceId']}',
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
