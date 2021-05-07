import 'package:flutter/material.dart';

// Cria uma animação constante a partir do momento
// em que é construída, sendo horizontal ou vertical através do uso
// de um Axis*/

class ObjectAnimated extends StatefulWidget {
  final Widget child;
  final Axis axis;
  final double percent;
  final Duration duration;

  const ObjectAnimated(
      {Key key, this.axis, this.percent, this.child, this.duration})
      : super(key: key);

  @override
  _ObjectAnimatedState createState() => _ObjectAnimatedState();
}

class _ObjectAnimatedState extends State<ObjectAnimated>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: widget.duration);
    super.initState();
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedBuilder(
            animation: _controller,
            builder: (context, _) {
              return Transform.translate(
                offset: widget.axis == Axis.vertical
                    ? Offset(0, _controller.value * widget.percent)
                    : Offset(_controller.value * widget.percent, 0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: widget.child,
                ),
              );
            })
      ],
    );
  }
}
