import 'package:blutetooth_task/view/detailed_view.dart';
import 'package:flutter/material.dart';

class DataSendingProtocol extends StatefulWidget {
  String name;
  DataSendingProtocol({super.key, required this.name});

  @override
  State<DataSendingProtocol> createState() => _DataSendingProtocolState();
}

class _DataSendingProtocolState extends State<DataSendingProtocol> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Data Sending Protocol",
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
          ),
          Center(
            child: Text(
              widget.name,
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "3KB Data \nTransfered",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Oneplus Earbuds \nAudio Data \nSending",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return DetailedView(
              name: widget.name,
            );
          }));
        },
        child: const Icon(
          Icons.arrow_forward_outlined,
          size: 40,
          color: Colors.black,
        ),
      ),
    );
  }
}
