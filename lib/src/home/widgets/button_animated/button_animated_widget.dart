import 'package:flutter/material.dart';

class ButtonAnimated extends StatefulWidget {
  final Widget child;

  const ButtonAnimated({Key key, this.child}) : super(key: key);

  @override
  _ButtonAnimatedState createState() => _ButtonAnimatedState();
}

class _ButtonAnimatedState extends State<ButtonAnimated>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  double _scale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 200), upperBound: 0.08)
      ..addListener(() => setState(() {}));
  }

  void _onTapDown(TapDownDetails details) {
    Future.delayed(Duration(milliseconds: 100), () => _controller.forward());
  }

  void _onTapUp(TapUpDetails details) {
    Future.delayed(Duration(milliseconds: 300), () => _controller.reverse());
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value + 0.2;
    return GestureDetector(
      onTapUp: _onTapUp,
      onTapDown: _onTapDown,
      child: Transform.scale(
        scale: _scale,
        child: widget.child,
      ),
    );
  }
}
