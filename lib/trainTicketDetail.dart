// ignore_for_file: must_be_immutable, no_logic_in_create_state

import 'package:flutter/material.dart';

class TrainTicketDetail extends StatefulWidget {
  String? name;
  String? image;
  String? where;
  String? reach;
  String? dateTime;

  TrainTicketDetail(
      {Key? key, this.name, this.image, this.dateTime, this.reach, this.where})
      : super(key: key);
  @override
  State<TrainTicketDetail> createState() => _TrainTicketDetailState(
      name: name, image: image, reach: reach, dateTime: dateTime, where: where);
}

class _TrainTicketDetailState extends State<TrainTicketDetail> {
  String? name;
  String? image;
  String? where;
  String? reach;
  String? dateTime;

  _TrainTicketDetailState(
      {required this.name,
      required this.image,
      this.where,
      this.reach,
      this.dateTime});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ລາຍລະອຽດການຈອງ'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: const [
                    CircleAvatar(radius: 50),
                    SizedBox(height: 10),
                    Text(
                      'ບັດປະຈຳຕົວ',
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ຊື້ປີ້: $dateTime',
                      style: const TextStyle(fontSize: 17),
                    ),
                    Text('ຊື່: $name'),
                    Text('ຈາກ: $where'),
                    Text('ເຖິງ: $reach'),
                    const Text('ລາຄາ: 200.000 ກີບ'),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'ອັບໂຫຼດ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'ສຳເນົາ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
