import 'package:flutter/material.dart';
import 'package:whatsappclone_flutter/pages/message_page.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({super.key});

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  final List<Widget> menuList = <Widget>[
    const PopupMenuItem(
      value: 'View Contact',
      child: Text('View Contact'),
    ),
    const PopupMenuItem(
      value: 'Media, links, and docs',
      child: Text('Media, links, and docs'),
    ),
    const PopupMenuItem(
      value: 'Search',
      child: Text('Search'),
    ),
    const PopupMenuItem(
      value: 'Mute notifications',
      child: Text('Mute notifications'),
    ),
    const PopupMenuItem(
      value: 'Wallpaper',
      child: Text('Wallpaper'),
    ),
    const PopupMenuItem(
      value: 'More',
      child: Text('More'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          backgroundColor: const Color.fromARGB(255, 15, 122, 110),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back, color: Colors.white, size: 22),
          ),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/2.png'),
                radius: 16.0,
              ),
              Padding(padding: EdgeInsets.only(left: 10.0)),
              Text(
                'Muhammad Faizan',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                // ignore: avoid_print
                print('Video Call');
              },
              icon: const Icon(Icons.videocam, color: Colors.white),
              iconSize: 22.0,
            ),
            IconButton(
              onPressed: () {
                // ignore: avoid_print
                print('Call');
              },
              icon: const Icon(Icons.call, color: Colors.white),
              iconSize: 22.0,
            ),
            IconButton(
              onPressed: () {
                showMenu(
                  context: context,
                  position: const RelativeRect.fromLTRB(100, 60, 00, 0),
                  items: [
                    ...menuList
                        .map(
                          (item) => PopupMenuItem(
                            value: item,
                            child: item,
                          ),
                        )
                        .toList(),
                  ],
                );
              },
              icon: const Icon(Icons.more_vert, color: Colors.white),
              iconSize: 22.0,
            ),
          ],
        ),
        body: Column(
          children: [
            const Expanded(child: MessagePage()),
            Container(
              padding: const EdgeInsets.all(10.0),
              color: Colors.white,
              child: Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      minLines: 1,
                      maxLines: 5,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: IconButton(
                            onPressed: () {
                              // ignore: avoid_print
                              print('Emoji');
                            },
                            icon: const Icon(Icons.emoji_emotions_outlined,
                                size: 24.0, color: Colors.grey),
                          ),
                        ),
                        hintText: 'Type a message',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {
                                  // ignore: avoid_print
                                  print('Attach');
                                },
                                icon: Transform.rotate(
                                  angle: 5.5,
                                  child: const Icon(Icons.attach_file,
                                      size: 25.0, color: Colors.grey),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  // ignore: avoid_print
                                  print('Camera');
                                },
                                icon: const Icon(Icons.camera_alt,
                                    size: 25.0, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                      iconSize: 20.0,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 15, 122, 110)),
                        shape: MaterialStateProperty.all(
                          const CircleBorder(),
                        ),
                      ))
                ],
              ),
            ),
          ],
        ));
  }
}
