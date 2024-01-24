import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/1.jpg'),
          ),
          title: Text('John Doe'),
          subtitle: Row(
            children: [
              Icon(
                Icons.call_made,
                color: Colors.green,
                size: 16,
              ),
              Text('Today, 10:00 AM'),
            ],
          ),
          trailing: Icon(Icons.call, color: Colors.green),
          onTap: null,
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/1.jpg'),
          ),
          title: Text('Jane Doe'),
          subtitle: Row(
            children: [
              Icon(
                Icons.call_received,
                color: Colors.red,
                size: 16,
              ),
              Text('Today, 09:00 AM'),
            ],
          ),
          trailing: Icon(Icons.call, color: Colors.red),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/1.jpg'),
          ),
          title: Text('John Smith'),
          subtitle: Row(
            children: [
              Icon(
                Icons.call_made,
                color: Colors.green,
                size: 16,
              ),
              Text('Today, 08:00 AM'),
            ],
          ),
          trailing: Icon(Icons.call, color: Colors.green),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/1.jpg'),
          ),
          title: Text('Jane Smith'),
          subtitle: Row(
            children: [
              Icon(
                Icons.call_received,
                color: Colors.red,
                size: 16,
              ),
              Text('Today, 07:00 AM'),
            ],
          ),
          trailing: Icon(Icons.call, color: Colors.red),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/1.jpg'),
          ),
          title: Text('John Doe'),
          subtitle: Row(
            children: [
              Icon(
                Icons.call_made,
                color: Colors.green,
                size: 16,
              ),
              Text('Today, 06:00 AM'),
            ],
          ),
          trailing: Icon(Icons.call, color: Colors.green),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/1.jpg'),
          ),
          title: Text('Jane Doe'),
          subtitle: Row(
            children: [
              Icon(
                Icons.call_received,
                color: Colors.red,
                size: 16,
              ),
              Text('Today, 05:00 AM'),
            ],
          ),
          trailing: Icon(Icons.call, color: Colors.red),
        ),
      ],
    );
  }
}
