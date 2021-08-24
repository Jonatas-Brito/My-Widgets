import 'package:flutter/material.dart';

Route createRoute(Widget builder) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => builder,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset(0.0, 0.0);
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var sizeTween =
          Tween<double>(begin: 1, end: 1).chain(CurveTween(curve: curve));

      return ScaleTransition(
        scale: animation.drive(sizeTween),
        alignment: Alignment.center,
      );
    },
  );
}
