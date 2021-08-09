import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

class LoadingAnimated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.blue,
      height: size.height,
      width: size.width,
      child: LoadingBouncingGrid.square(
        backgroundColor: Colors.white,
      ),
    );
  }
}
