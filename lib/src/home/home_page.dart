import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:innovations/src/home/widgets/icon_animated/icon_animated_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      Text('1'),
      Text('2'),
      Text('3'),
      Text('4'),
    ];
    final size = MediaQuery.of(context).size;
    return Container(
        color: Colors.amber,
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconAnimated(
              iconOutline: Icons.check_box_outline_blank_outlined,
              iconFull: Icons.check_box,
              color: Colors.teal,
              sizeAnimation: true,
              onTap: () {},
            ),
          ],
        )
        /*Stack(
        alignment: Alignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 150,
            width: 150,
            child: OverflowBox(
              child: Image.asset(
                'assets/icare_logo.png',
              ),
            ),
          ),
        ],
      ),*/
        );
  }
}
