import 'package:flutter/material.dart';
import 'package:web_admin/pages/preview.dart';

import 'confirm.dart';
import 'details.dart';
import 'home.dart';

class AppPage extends StatefulWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  State<AppPage> createState() => _HomePageState();
}

class _HomePageState extends State<AppPage> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text("Booking"),
      ),
      body: PageView(
        controller: _pageController,
        // physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomePage(),
          DetailsPage(),
          PreviewPage(),
          ConfirmPage(),
        ],
      ),
    );
  }
}
