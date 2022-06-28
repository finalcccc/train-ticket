// ignore_for_file: must_be_immutable, no_logic_in_create_state, unnecessary_string_interpolations

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:web_admin/trainTicketDetail.dart';

class TrainTicketView extends StatefulWidget {
  String? where;
  String? reach;
  String? dateTime;
  TrainTicketView({Key? key, this.where, this.reach, this.dateTime})
      : super(key: key);
  @override
  State<TrainTicketView> createState() =>
      _TrainTicketViewState(where, reach, dateTime);
}

class _TrainTicketViewState extends State<TrainTicketView> {
  TextEditingController nameController = TextEditingController();
  late List<TextEditingController> controllers;
  String? where;
  String? reach;
  String? dateTime;

  _TrainTicketViewState(this.where, this.reach, this.dateTime);
  XFile? image;
  int count = 0;
  @override
  void initState() {
    super.initState;
    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ຈອງປີ້ລົດໄຟ"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            image == null ? Container() : Image.file(File(image!.path)),
            CircleAvatar(
              maxRadius: 50,
              minRadius: 50,
              backgroundColor: Colors.indigo,
              child: TextButton(
                autofocus: true,
                onPressed: () async {
                  image = await ImagePicker().pickImage(
                    source: ImageSource.gallery,
                  );
                  setState(() {
                    image!;
                  });
                },
                child: const Text(
                  'ບັດ\nປະຈຳຕົວ',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'ຈາກ: $where',
                    ),
                    readOnly: true,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'ເຖິງ: $reach',
                    ),
                    readOnly: true,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: '${dateTime.toString()}',
                    ),
                    readOnly: true,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'ກະລຸນາປ້ອນຊື່ຜູ້ໃຊ້ປີ້',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text('1'),
                      const SizedBox(
                        width: 30.0,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: nameController,
                          decoration: const InputDecoration(
                              hintText: 'ຊື່ ແລະ ນາມສະກຸນ:'),
                        ),
                      ),
                    ],
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: count,
                    itemBuilder: (context, index) {
                      return _row(index + 2);
                    },
                  ),
                  IconButton(
                    onPressed: () async {
                      setState(() {
                        count++;
                      });
                    },
                    icon: const Icon(Icons.add),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        if (image == null) {
                          final snackBar = SnackBar(
                            content: const Text(
                              'ກະລຸນາອັບໂຫຼດບັດປະຈຳຕົວ!',
                              style: TextStyle(),
                            ),
                            action: SnackBarAction(
                              label: 'Undo',
                              onPressed: () {},
                              textColor: Colors.blue,
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrainTicketDetail(
                                        name: nameController.text,
                                        image: image!.path,
                                        dateTime: dateTime,
                                        reach: reach,
                                        where: where,
                                      )));
                        }
                      },
                      child: const Text(
                        'ຖັດໄປ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _row(int index) {
    return Row(
      children: [
        Text('$index'),
        const SizedBox(
          width: 30.0,
        ),
        Expanded(
            child: TextFormField(
          decoration: const InputDecoration(hintText: 'ຊື່ ແລະ ນາມສະກຸນ:'),
        ))
      ],
    );
  }
}
