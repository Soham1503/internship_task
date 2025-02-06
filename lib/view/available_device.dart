import 'package:blutetooth_task/view/connected_device.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map>? data = [
    {"deviceName": "OPPO Watch", "deviceId": "68:27:37:97:16:C2"},
    {"deviceName": "APPLE Watch", "deviceId": "6D:D7:A7:5C:71:C2"},
    {"deviceName": "Airdopes 161", "deviceId": "40:00:00:64:97:47"},
    {"deviceName": "Boat Rockerz 269+", "deviceId": "8A:0F:CC:41:C9"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Available Devices",
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: data!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return ConnectedDevice(
                            selectedName: data![index]['deviceName'],
                          );
                        }));
                      },
                      child: Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.2), // Soft shadow
                                blurRadius: 10,
                                offset: const Offset(
                                    0, 5), // Slight downward offset
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
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
