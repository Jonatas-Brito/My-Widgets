import 'package:flutter/material.dart';
import 'package:transitions_ap/srs/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    final Color color = Colors.purple;
    final Color backgroundColor = Colors.white;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: color,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => Page3()));
          },
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
          child: Text(
            'Page3',
            style: TextStyle(
              fontSize: 25,
              color: backgroundColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
