import 'package:flutter/material.dart';

import '../constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  String fromStation = "";
  String toStation = "";
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    List<String> data = [
      "Station 1",
      "Station 2",
      "Station 3",
      "Station 4",
      "Station 5",
      "Station 6",
      "Station 7",
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(defaultPadding),
              padding: const EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(defaultBorderRadius),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () => showStation(context, data),
                          child: Container(
                            padding: const EdgeInsets.all(defaultPadding),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: greyColor),
                            ),
                            child: Text(
                                fromStation.isNotEmpty ? fromStation : "From"),
                          ),
                        ),
                      ),
                      const SizedBox(width: defaultPadding),
                      Expanded(
                        child: InkWell(
                          onTap: (() => showStation(context, data)),
                          child: Container(
                            padding: const EdgeInsets.all(defaultPadding),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: greyColor),
                            ),
                            child:
                                Text(toStation.isNotEmpty ? toStation : "To"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding * 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "ລາຄາ: ວີໄອພີ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (v) {
                                    setState(() {
                                      isChecked != isChecked;
                                    });
                                  })
                            ],
                          ),
                          // const SizedBox(height: defaultPadding),
                          Text(
                            "ຜູ້ໃຫ່ຍ: ${numberFortmate.format(120000)} KIP",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          Text(
                            "ເດັກນ້ອຍ: ${numberFortmate.format(120000)} KIP",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "ທຳມະດາ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (v) {
                                    setState(() {
                                      isChecked != isChecked;
                                    });
                                  })
                            ],
                          ),
                          // const SizedBox(height: defaultPadding),
                          Text(
                            "ຜູ້ໃຫ່ຍ: ${numberFortmate.format(120000)} KIP",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          Text(
                            "ເດັກນ້ອຍ: ${numberFortmate.format(120000)} KIP",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: defaultPadding * 2),
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: greyColor),
                      borderRadius:
                          BorderRadius.circular(defaultBorderRadius / 2),
                    ),
                    alignment: Alignment.center,
                    child: const Text('text'),
                  ),
                  const SizedBox(height: defaultPadding * 2),
                  MaterialButton(
                    onPressed: () {},
                    elevation: 0,
                    height: 45,
                    color: appColor,
                    minWidth: MediaQuery.of(context).size.width,
                    child: const Text(
                      "Next",
                      style: TextStyle(color: whiteColor),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> showStation(BuildContext context, List<String> data) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        decoration: const BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(defaultBorderRadius),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 2,
                width: 120,
                margin: const EdgeInsets.all(defaultPadding / 2),
                decoration: BoxDecoration(
                  color: greyColor.shade300,
                  borderRadius: BorderRadius.circular(defaultBorderRadius),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: Text(
                "Station",
                style: TextStyle(
                  color: blackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  runSpacing: defaultPadding,
                  spacing: defaultPadding,
                  children: data
                      .map(
                        (item) => InkWell(
                          onTap: () {
                            if (fromStation != toStation) {
                              setState(() {
                                fromStation = item;
                              });
                            }
                            if (toStation != fromStation) {
                              setState(() {
                                toStation = item;
                              });
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: appColor,
                              borderRadius:
                                  BorderRadius.circular(defaultBorderRadius),
                            ),
                            padding: const EdgeInsets.all(defaultPadding),
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: whiteColor,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
