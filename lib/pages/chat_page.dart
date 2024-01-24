import 'package:flutter/material.dart';
import 'package:whatsappclone_flutter/models/chat_model.dart';
import 'package:whatsappclone_flutter/pages/chat_detail_page.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage>
    with AutomaticKeepAliveClientMixin<ChatPage> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.builder(
        itemCount: chatData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const Divider(
                height: 8.0,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(chatData[index].avatarUrl),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      chatData[index].name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                subtitle: Text(
                  chatData[index].message,
                  style: const TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
                trailing: Text(
                  chatData[index].time,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChatDetailPage()));
                },
              )
            ],
          );
        });
  }

  @override
  bool get wantKeepAlive => true;
}
