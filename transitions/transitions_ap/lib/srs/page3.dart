import 'package:flutter/material.dart';
import 'package:transitions_ap/srs/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    final Color color = Colors.green;
    final Color backgroundColor = Colors.white;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: color,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => Page4()));
          },
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
          child: Text(
            'Page4',
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
