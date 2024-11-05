import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          //leading: Icon(Icons.supervised_user_circle),
          title: Text('Anime & Manga'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.chat_rounded),
              tooltip: 'Chat Icon',
              onPressed: () {},
            ), //IconButton
            IconButton(
              icon: const Icon(Icons.notification_add),
              tooltip: 'Notification Icon',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.qr_code),
              tooltip: 'QR Code Icon',
              onPressed: () {},
            ),//IconButton
          ],
          backgroundColor: Colors.tealAccent,
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
               UserAccountsDrawerHeader( // <-- SEE HERE
                decoration: BoxDecoration(color: Colors.tealAccent),
                accountName: Text(
                  "Solo Leveling",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18
                  ),
                ),
                accountEmail: Text(
                  "jinwoo@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                currentAccountPicture:CircleAvatar(
                  backgroundImage:
                  NetworkImage("https://cdn.pixabay.com/user/2020/03/23/23-58-11-163_250x250.png"),
                )
               ),
              ListTile(
                leading: Icon(
                  Icons.home,
                ),
                title: const Text('Home Page'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                ),
                title: const Text('My Profile'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.security,
                ),
                title: const Text('Security'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.language,
                ),
                title: const Text('Language'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.phone,
                ),
                title: const Text('Contact Us'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],

          ),
        ),
        body: Center(
          child: Text(
            'Hello, Shadow Monarch!',
            style: TextStyle(fontSize: 24, color: Colors.blue),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.tealAccent,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.touch_app),
            label: 'Touch',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chats',
            ),
          ],
        ),
      ),
    );
  }
}
