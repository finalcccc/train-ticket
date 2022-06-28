// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:web_admin/trainTicketView.dart';

import 'customDrawerWidget.dart';

class TrainTicket extends StatefulWidget {
  const TrainTicket({Key? key}) : super(key: key);

  @override
  State<TrainTicket> createState() => _TrainTicketState();
}

class _TrainTicketState extends State<TrainTicket> {
  TextEditingController whereController = TextEditingController();
  TextEditingController reachController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  List<String> choose = [
    "ນະຄອນຫຼວງວຽງຈັນ",
    "ຫຼວງພະບາງ",
    "ອຸດົມໄຊ",
    "ຫຼວງນ້ຳທາ"
  ];
  Future<void> _selectDateFromPicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(DateTime.now().year - 20),
      firstDate: DateTime(DateTime.now().year - 30),
      lastDate: DateTime(DateTime.now().year),
    );
    if (picked != null)
      setState(() {
        dateController.text =
            "ວັນທີ ${picked.day} ເດືອນ ${picked.month} ປີ ${picked.year}";
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ຈອງປີ້ລົດໄຟ"),
        centerTitle: true,
      ),
      drawer: const CustomDrawerWidget(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 10),
                TextFormField(
                  autofocus: true,
                  controller: whereController,
                  decoration: InputDecoration(
                    prefix: const Text('ຈາກ: '),
                    suffixIcon: DropdownButton<String>(
                      items: choose.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                          onTap: () {
                            setState(() {
                              whereController.text = value;
                            });
                          },
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: reachController,
                  decoration: InputDecoration(
                    prefix: const Text('ເຖິງ: '),
                    suffixIcon: DropdownButton<String>(
                      items: choose.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                          onTap: () {
                            setState(() {
                              reachController.text = value;
                            });
                          },
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: dateController,
                  readOnly: true,
                  decoration: InputDecoration(
                    hintText: "ວັນ ເດືອນ ປີ",
                    suffixIcon: IconButton(
                      onPressed: () => _selectDateFromPicker(context),
                      icon: const Icon(Icons.calendar_today_outlined),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        TrainTicketView trainTicketView = TrainTicketView(
                          where: whereController.text,
                          reach: reachController.text,
                          dateTime: dateController.text,
                        );
                        return trainTicketView;
                      }));
                    },
                    child: const Text(
                      'ຖັດໄປ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
