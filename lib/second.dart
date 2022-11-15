import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondWidget extends StatefulWidget {
  const SecondWidget({super.key});

  @override
  State<SecondWidget> createState() => _SecondWidgetState();
}

class _SecondWidgetState extends State<SecondWidget> {
  @override
  void initState() {
    counter = 20;
    super.initState();
  }

  final list = [1, 2, 3, if (false) 4 else 3, 5];
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  int counter = 0;

  bool isShow = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          'https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2022/04/change-text-color.png?w=910&ssl=1',
          width: 300,
          height: 300,
          fit: BoxFit.fill,
          // color: Colors.red,
        ),
        for (final item in list) Text(item.toString()),
        Text("$counter"),
        if (isShow) HideOnClick() else Text("no"),
        IconButton(
            onPressed: () {
              setState(() {
                list.add(40);
                counter += 1;
                isShow = !isShow;
              });

              print(counter);
            },
            icon: Icon(Icons.add))
      ],
    );
  }
}

class HideOnClick extends StatefulWidget {
  const HideOnClick({super.key});

  @override
  State<HideOnClick> createState() => _HideOnClickState();
}

class _HideOnClickState extends State<HideOnClick> {
  @override
  void initState() {
    print("I am created");
    super.initState();
  }

  @override
  void dispose() {
    print("I am disposed");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text("will be deleted");
  }
}
