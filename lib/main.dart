import 'package:flutter/material.dart';
import 'package:myfirstapp/mycard.dart';

void main() {
  runApp(MyCard());
}

class MyProfile extends StatelessWidget {
  const MyProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: columns(),
        ),
      ),
    );
  }

  Row rows() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        item(Colors.teal, "Cell 1"),
        item(Colors.redAccent, "Cell 2"),
        item(Colors.greenAccent, "Bobo"),
        SizedBox(
          height: double.infinity,
        )
      ],
    );
  }

  Column columns() {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        item(Colors.teal, "Cell 1"),
        item(Colors.redAccent, "Cell 2"),
        item(Colors.greenAccent, "Bobo"),
        item(Colors.red, "Bobo"),
        item(Colors.blue, "Bobo"),
        item(Colors.amber, "Bobo"),
        item(Colors.greenAccent, "Bobo"),
        item(Colors.amberAccent, "Bobo"),
        item(Colors.blueGrey, "Bobo"),
      ],
    );
  }

  item(Color color, String text) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(16),
        height: 100,
        width: double.infinity,
        color: color,
        child: Center(child: Text(text)),
      ),
    );
  }
}
