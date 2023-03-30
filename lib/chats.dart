import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://scontent.fktm17-1.fna.fbcdn.net/v/t39.30808-6/337501350_718928789974717_7378921845374203018_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=c86-QeYKbqIAX9DFAUk&_nc_ht=scontent.fktm17-1.fna&oh=00_AfCTAzGUyJTl5k_-Rg8jQL4gpob6b-4vy43JscJk8b0HXg&oe=642936BB'),
          ),
          title: Text(
            'Mukesh Mandal',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('Hello Buddy'),
          trailing: Text('1:47 PM'),
        );
      },
    );
  }
}
