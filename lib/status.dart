import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: index >= 5 && index < 11
                          ? Color.fromARGB(255, 101, 232, 106)
                          : Colors.white,
                      width: 3),
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://scontent.fktm17-1.fna.fbcdn.net/v/t39.30808-6/337501350_718928789974717_7378921845374203018_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=c86-QeYKbqIAX9DFAUk&_nc_ht=scontent.fktm17-1.fna&oh=00_AfCTAzGUyJTl5k_-Rg8jQL4gpob6b-4vy43JscJk8b0HXg&oe=642936BB'),
                ),
              ),
              title: Text(
                index == 0 ? 'my story' : 'prajul',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('10 March , 12:14 PM'),
            ),
            if (index > 0 && index < 2)
              Divider(
                thickness: 2,
              )
            else
              Divider(),
          ],
        );
      },
    );
  }
}
