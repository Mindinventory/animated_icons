import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:animated_icon/animate_icons.dart';

import 'animate_icon_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Icon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Animated Lottie Icon'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool isRepeat = false;
  @override
  void initState() {
    _tabController = TabController(length: IconType.values.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
              child: TabBar(
                tabs: IconType.values.map((page) {
                  return Text(
                    page.name,
                    style: const TextStyle(color: Colors.black),
                  );
                }).toList(),
                controller: _tabController,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: IconType.values.map((page) {
                  return AnimateIconScreen(
                    iconType: page,
                  );
                }).toList(),
              ),
            ),
          ],
        ));
  }
}
