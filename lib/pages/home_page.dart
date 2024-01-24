import 'package:flutter/material.dart';
import 'package:whatsappclone_flutter/pages/call_page.dart';
import 'package:whatsappclone_flutter/pages/camera_page.dart';
import 'package:whatsappclone_flutter/pages/chat_page.dart';
import 'package:whatsappclone_flutter/pages/status_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  final List<Tab> topTabs = <Tab>[
    const Tab(icon: Icon(Icons.camera_alt)),
    const Tab(text: 'CHATS'),
    const Tab(text: 'STATUS'),
    const Tab(text: 'CALLS'),
  ];

  final List<Widget> actions = <Widget>[
    IconButton(
      onPressed: () {},
      icon: const Icon(Icons.search),
      style: ButtonStyle(
        iconColor: MaterialStateProperty.all(Colors.white),
      ),
    ),
    IconButton(
        onPressed: () {},
        icon: const Icon(Icons.more_vert),
        style: ButtonStyle(
          iconColor: MaterialStateProperty.all(Colors.white),
        )),
  ];

  @override
  void initState() {
    super.initState();
    _controller =
        TabController(length: topTabs.length, initialIndex: 1, vsync: this)
          ..addListener(() {
            setState(() {});
          });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(7, 94, 84, 1),
        actions: actions,
        bottom: TabBar(
          tabs: topTabs,
          controller: _controller,
          labelColor: Colors.white,
          indicatorColor: Colors.white,
          unselectedLabelColor: Colors.white.withOpacity(0.5),
        ),
        title: Text(
          widget.title,
          textDirection: TextDirection.ltr,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: const <Widget>[
          CameraPage(),
          ChatPage(),
          StatusPage(),
          CallPage(),
        ],
      ),
      floatingActionButton: _getFAB(),
    );
  }

  _getFAB() {
    if (_controller.index == 1) {
      return FloatingActionButton(
        onPressed: () {
          // ignore: avoid_print
          print('New Chat');
        },
        backgroundColor: const Color.fromRGBO(37, 211, 102, 1),
        child: const Icon(Icons.message, color: Colors.white),
      );
    } else if (_controller.index == 2) {
      return FloatingActionButton(
        onPressed: () {
          // ignore: avoid_print
          print('New Status');
        },
        backgroundColor: const Color.fromRGBO(37, 211, 102, 1),
        child: const Icon(Icons.camera_alt, color: Colors.white),
      );
    } else if (_controller.index == 3) {
      return FloatingActionButton(
        onPressed: () {
          // ignore: avoid_print
          print('New Call');
        },
        backgroundColor: const Color.fromRGBO(37, 211, 102, 1),
        child: const Icon(Icons.add_call, color: Colors.white),
      );
    } else {
      return null;
    }
  }
}
