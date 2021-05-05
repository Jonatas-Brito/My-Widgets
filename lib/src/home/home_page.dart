import 'package:flutter/material.dart';
import 'package:innovations/src/home/widget/icon_animated/icon_animated_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.blue[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconAnimated(
            sizeAnimation: true,
            color: Colors.white,
            size: 100,
            iconOutline: Icons.favorite_border_outlined,
            iconFull: Icons.favorite,
          )
        ],
      ),
    );
  }
}
