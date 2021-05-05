import 'package:flutter/material.dart';

class IconAnimated extends StatefulWidget {
  final bool sizeAnimation;
  final double size;
  final Color color;
  final IconData iconOutline;
  final IconData iconFull;

  const IconAnimated(
      {Key key,
      this.iconOutline,
      this.iconFull,
      this.size,
      this.color,
      this.sizeAnimation = false})
      : super(key: key);
  @override
  _IconAnimatedState createState() => _IconAnimatedState();
}

class _IconAnimatedState extends State<IconAnimated>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  double _scale;

  var visible;

  @override
  void initState() {
    visible = false;
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

  _iconAnimated() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Icon(
          widget.iconOutline,
          color: widget.color,
          size: widget.size,
        ),
        visible
            ? TweenAnimationBuilder(
                tween: Tween(begin: 0.0, end: 1.0),
                duration: Duration(milliseconds: 180),
                builder: (context, value, _) {
                  Future.delayed(Duration(milliseconds: 1500));
                  return Transform.scale(
                    scale: value,
                    child: Icon(
                      widget.iconFull,
                      color: widget.color,
                      size: widget.size,
                    ),
                  );
                })
            : (TweenAnimationBuilder(
                tween: Tween(begin: 1.0, end: 0.0),
                duration: Duration(milliseconds: 180),
                builder: (context, value, _) {
                  return Transform.scale(
                    scale: value,
                    child: Icon(
                      widget.iconFull,
                      color: widget.color,
                      size: widget.size,
                    ),
                  );
                })),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value + 0.2;

    return GestureDetector(
      onTapUp: widget.sizeAnimation ? _onTapUp : null,
      onTapDown: widget.sizeAnimation ? _onTapDown : null,
      child: Transform.scale(
        scale: _scale,
        child: _iconAnimated(),
      ),
      onTap: () {
        Future.delayed(Duration(milliseconds: 300),
            () => setState(() => visible = !visible));
      },
    );
  }
}
