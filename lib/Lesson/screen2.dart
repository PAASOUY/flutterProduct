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
          title: Text('Menu',style: TextStyle(
            color: Colors.white
          ),),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), // Adjust padding as needed
              child: Text(
                'Log out',
                style: TextStyle(
                  fontSize: 18, // Adjust font size as needed
                  color: Colors.yellow, // Set text color to yellow
                ),
              ),
            ),
          ],
          backgroundColor: Colors.black,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.yellow, // Change the color of the drawer icon here
          ),
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
        body: Column(
          children: [
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 1,
                        blurRadius: 10,
                      )
                    ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.supervised_user_circle,size: 100,color: Colors.grey,),
                      Text("User",style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey
                      ),)
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.yellow,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 1,
                          blurRadius: 10,
                        )
                      ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.perm_contact_cal_outlined,size: 100,color: Colors.grey,),
                      Text("Contact",style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey
                      ),)
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 1,
                          blurRadius: 10,
                        )
                      ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.groups,size: 100,color: Colors.grey,),
                      Text("Group",style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey
                      ),)
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 1,
                          blurRadius: 10,
                        )
                      ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.newspaper,size: 100,color: Colors.grey,),
                      Text("Document",style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey
                      ),)
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 1,
                          blurRadius: 10,
                        )
                      ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.view_list_outlined,size: 100,color: Colors.grey,),
                      Text("Type",style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey
                      ),)
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 1,
                          blurRadius: 10,
                        )
                      ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.call,size: 100,color: Colors.grey,),
                      Text("Phone Number",style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey
                      ),)
                    ],
                  ),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}
