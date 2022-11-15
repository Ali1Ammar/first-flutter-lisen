import 'package:first/second.dart';
import 'package:first/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      color: Colors.amber,
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text("Home page"),
        actions: [
          IconButton(
              onPressed: () {
                print("pressed add icon");
              },
              icon: Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add))
        ],
      ),
      body: Container(
        // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 200),
        // margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
        // width: 200,
        // height: 100,
        // color: Colors.red,
        alignment: Alignment.bottomCenter,
        child: Wrap(
          spacing: 10,
          children: [
            TextButton(onPressed: () {}, child: Text("Add more")),
            OutlinedButton(
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.black)),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Text("Click me"),
                )),
            SecondWidget(),
            ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(10),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text("Hello"),
                )),
            IconButton(
                onPressed: () {
                  print("pressed add icon");
                },
                icon: Icon(Icons.add)),
            MaterialButton(
              onPressed: () {},
              child: Text("Hi"),
            ),
            Icon(
              Icons.mobile_off,
              color: Colors.white,
              size: 90,
            ),
            Icon(
              Icons.access_alarm,
              color: Colors.blue,
              size: 90,
            ),
            Icon(
              Icons.add,
              size: 50,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 225, 241, 243),
          onTap: (index) {
            if (index == 1) {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
                return SettingScreen();
              }));
            }
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Hi"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Setting")
          ]),
    );
  }
}
