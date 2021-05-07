import 'package:flutter/material.dart';
import 'package:innovations/src/home/widgets/object_animated/object_animated_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      color: Colors.blue[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ObjectAnimated(
            axis: Axis.vertical,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(60)),
            ),
            percent: 150,
            duration: Duration(milliseconds: 1500),
          )
        ],
      ),
    );
  }
}
