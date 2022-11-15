import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SettingScreen extends StatefulWidget {
  SettingScreen({super.key}) {
    print("from constractor");
  }

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  _SettingScreenState() {
    print("from constractor");
  }

  TextEditingController textEditingController =
      TextEditingController(text: "HI");
  @override
  void initState() {
    print("init from init state");
    super.initState();
  }

  @override
  void dispose() {
    print("dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("setting"),
          AnimatedBuilder(
              animation: textEditingController,
              builder: (context, child) {
                return Text(textEditingController.text);
              }),
          TextField(
            controller: textEditingController,

            // onChanged: (newValue) {
            // setState(() {
            //   name = newValue;
            // });
            // },
          )
        ],
      ),
    );
  }
}
