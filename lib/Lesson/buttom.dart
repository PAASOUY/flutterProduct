import 'package:flutter/material.dart';

void main() => runApp(Button());

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Themed App',
      darkTheme: ThemeData(),
      themeMode: ThemeMode.dark,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Button Widget"),
            actions: const [
              Padding(padding: EdgeInsets.all(10), child: Icon(Icons.qr_code)),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Icon(Icons.notification_add)),
            ],
          ),
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    print("ElevatedButton");
                  },
                  child: Text("Sign In"),
                ),
                TextButton(
                  onPressed: () {
                    print("TextButton");
                  },
                  child: Text("Sign In"),
                ),
                IconButton(
                  onPressed: () {
                    print("IconButton");
                  },
                  icon: Icon(Icons.print),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.ice_skating,
                  ),
                ),
              ],
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.qr_code_rounded),
            backgroundColor: const Color.fromRGBO(1, 1, 1, 0.5),
            foregroundColor: Colors.white,
            onPressed: () => {},
          ),
          bottomNavigationBar: BottomAppBar(
              color: Colors.blueAccent,
              shape: const CircularNotchedRectangle(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  ),
                ],
              ))),
    );
  }
}
