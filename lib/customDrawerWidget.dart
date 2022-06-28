import 'dart:math';

import 'package:flutter/material.dart';
import 'package:web_admin/trainTicketDetail.dart';

class CustomDrawerWidget extends StatefulWidget {
  const CustomDrawerWidget({Key? key}) : super(key: key);

  @override
  State<CustomDrawerWidget> createState() => _CustomDrawerWidgetState();
}

class _CustomDrawerWidgetState extends State<CustomDrawerWidget> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
          child: Column(
        children: [
          // ! Here Color Of Page Drawer !
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.purpleAccent, Colors.deepPurpleAccent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter)),
          ),
          SafeArea(
              child: Container(
            width: 400,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                DrawerHeader(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        radius: 50,
                      ),
                      SizedBox(height: 10),
                      Text("ຮູບໂປໄຟ"),
                    ],
                  ),
                ),
                const ListTile(
                  title: Text("ຊື່ຜູ້ໃຊ້"),
                  leading: Icon(Icons.people),
                ),
                const ListTile(
                  title: Text("ຈອງປີ້"),
                  leading: Icon(Icons.train_sharp),
                ),
                ListTile(
                  title: const Text("ປີ້ປະຈຸບັນ"),
                  leading: const Icon(Icons.train_sharp),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TrainTicketDetail()));
                  },
                ),
                const ListTile(
                  title: Text("ປະຫວັດການຈອງ"),
                  leading: Icon(Icons.history),
                ),
                ListTile(
                  title: const Text("ອອກຈາກ"),
                  leading: const Icon(Icons.exit_to_app),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          )),
        ],
      )),
    );
  }
}
