import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  static const styleSender = BubbleStyle(
    nip: BubbleNip.rightTop,
    color: Color.fromRGBO(225, 255, 199, 1.0),
    margin: BubbleEdges.only(top: 10),
    alignment: Alignment.topRight,
  );

  static const styleReceiver = BubbleStyle(
    nip: BubbleNip.leftTop,
    margin: BubbleEdges.only(top: 10),
    alignment: Alignment.topLeft,
  );

  List<Widget> messageList = [
    Bubble(
      alignment: Alignment.center,
      color: const Color.fromRGBO(212, 234, 244, 1.0),
      child: const Text('TODAY',
          textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
    ),
    Bubble(
      style: styleSender,
      child: const Text('Hi, How are you?'),
    ),
    Bubble(
      style: styleReceiver,
      child: const Text('Hi, I am fine'),
    ),
    Bubble(
      style: styleSender,
      child: const Text('Where are you?'),
    ),
    Bubble(
      style: styleReceiver,
      child: const Text('I am in Jakarta'),
    ),
    Bubble(
      style: styleSender,
      child: const Text('What are you doing?'),
    ),
    Bubble(
      style: styleReceiver,
      child: const Text('I am working'),
    ),
    Bubble(
      style: styleSender,
      child: const Text('What is your hobby?'),
    ),
    Bubble(
      alignment: Alignment.center,
      color: const Color.fromRGBO(212, 234, 244, 1.0),
      child: const Text('YESTERDAY',
          textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
    ),
    Bubble(
      style: styleReceiver,
      child: const Text('I like playing football'),
    ),
    Bubble(
      style: styleSender,
      child: const Text('What is your favorite food?'),
    ),
    Bubble(
      style: styleReceiver,
      child: const Text('I like eating meatball'),
    ),
    Bubble(
      style: styleSender,
      child: const Text('What is your favorite drink?'),
    ),
    Bubble(
      style: styleReceiver,
      child: const Text('I like drinking coffee'),
    ),
    Bubble(
      style: styleSender,
      child: const Text('What is your favorite color?'),
    ),
    Bubble(
      style: styleReceiver,
      child: const Text('I like blue'),
    ),
    Bubble(
      style: styleSender,
      child: const Text('What is your favorite animal?'),
    ),
    Bubble(
      style: styleReceiver,
      child: const Text('I like cat'),
    ),
    Bubble(
      style: styleSender,
      child: const Text('What is your favorite fruit?'),
    ),
    Bubble(
      style: styleReceiver,
      child: const Text('I like banana'),
    ),
    Bubble(
      style: styleSender,
      child: const Text('What is your favorite vegetable?'),
    ),
    Bubble(
      style: styleReceiver,
      child: const Text('I like carrot'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messageList.length,
      itemBuilder: (context, index) {
        return messageList[index];
      },
    );
  }
}
