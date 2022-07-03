import 'package:flutter/material.dart';
import '../constants.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  const SizedBox(height: defaultPadding * 2),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "ນະຄອນຫຼວງວຽງຈັນ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: defaultPadding),
                          child: Icon(Icons.arrow_forward, color: appColor),
                        ),
                        Text(
                          "ຫຼວງພະບາງ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: defaultPadding * 2),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
              padding: const EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(defaultBorderRadius),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ຈໍານວນທີ່ຊື້",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ປີ້ຜູ້ໃຫຍ່",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            borderRadius:
                                BorderRadius.circular(defaultBorderRadius),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: greyColor),
                                borderRadius:
                                    BorderRadius.circular(defaultBorderRadius),
                              ),
                              child: const Icon(Icons.remove, size: 18),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 50,
                            child: Text(
                              numberFortmate.format(0),
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            borderRadius:
                                BorderRadius.circular(defaultBorderRadius),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: greyColor),
                                borderRadius:
                                    BorderRadius.circular(defaultBorderRadius),
                              ),
                              child: const Icon(Icons.add, size: 18),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  Divider(),
                  const SizedBox(height: defaultPadding / 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ປີ້ຜູ້ໃຫຍ່",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            borderRadius:
                                BorderRadius.circular(defaultBorderRadius),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: greyColor),
                                borderRadius:
                                    BorderRadius.circular(defaultBorderRadius),
                              ),
                              child: const Icon(Icons.remove, size: 18),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 50,
                            child: Text(
                              numberFortmate.format(0),
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            borderRadius:
                                BorderRadius.circular(defaultBorderRadius),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: greyColor),
                                borderRadius:
                                    BorderRadius.circular(defaultBorderRadius),
                              ),
                              child: const Icon(Icons.add, size: 18),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: defaultPadding),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
              padding: const EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(defaultBorderRadius),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "ຂໍ້ມູນຜູ້ຊື້",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'ຊື່:',
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'ເບີຕິດຕໍ່:',
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  Text('ລາຄາລວມ: ${numberFortmate.format(400000)}  KIP'),
                  const SizedBox(height: defaultPadding / 2),
                  Text(
                      'ລາຄາທີ່ໄດ້ຈ່າຍກ່ອນ 30%: ${numberFortmate.format(150000)} KIP'),
                  const SizedBox(height: defaultPadding),
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: greyColor),
                      borderRadius:
                          BorderRadius.circular(defaultBorderRadius / 2),
                    ),
                    alignment: Alignment.center,
                    child: const Icon(Icons.photo),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: MaterialButton(
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
            ),
          ],
        ),
      ),
    );
  }
}
