import 'package:flutter/material.dart';

void mian() {
  runApp(const DrawerView());
}

class DrawerView extends StatefulWidget {
  const DrawerView({super.key});

  @override
  State<DrawerView> createState() => _ApiState();
}

class _ApiState extends State<DrawerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Flutter Drawer',
          style: TextStyle(fontSize: 23),
        )),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 218, 218, 218),
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/94712571?v=4'),
                ),
                accountName: Text(
                  'Danish Kumar',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                accountEmail: Text('danish@gmail.com',
                    style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 133, 128, 128)))),
            Container(
              height: 2,
              color: const Color.fromARGB(255, 223, 223, 223),
            ),
            drawerList(Icons.folder, 'My Files'),
            drawerList(Icons.people_alt_rounded, 'Shared with me'),
            drawerList(Icons.star_sharp, 'Starred'),
            drawerList(Icons.watch_later_outlined, 'Recents'),
            drawerList(Icons.offline_pin, 'Offline'),
            drawerList(Icons.upload, 'Uploads'),
            drawerList(Icons.backup, 'Backups'),
            drawerList(Icons.delete, 'Trash'),
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 1,
              color: const Color.fromARGB(255, 223, 223, 223),
            ),
            drawerList(Icons.settings, 'Settings'),
          ],
        ),
      ),
    );
  }
}

drawerList(icon, text) {
  return Padding(
    padding: const EdgeInsets.only(top: 30),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Icon(
            icon,
            color: Color.fromARGB(255, 89, 89, 89),
            size: 30,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text(
            '$text',
            style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
          ),
        )
      ],
    ),
  );
}
