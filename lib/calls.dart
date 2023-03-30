import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://scontent.fktm17-1.fna.fbcdn.net/v/t39.30808-6/337501350_718928789974717_7378921845374203018_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=c86-QeYKbqIAX9DFAUk&_nc_ht=scontent.fktm17-1.fna&oh=00_AfCTAzGUyJTl5k_-Rg8jQL4gpob6b-4vy43JscJk8b0HXg&oe=642936BB'),
          ),
          title: Text(
            'Mukesh Mandal',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('10 March , 12:14 PM'),
          trailing: Icon(index % 2 == 0 ? Icons.phone : Icons.video_call),
        );
      },
    );
  }
}
