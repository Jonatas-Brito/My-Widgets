import 'package:flutter/material.dart';

class AppBarAnimated extends StatefulWidget {
  @override
  _AppBarAnimatedState createState() => _AppBarAnimatedState();
}

final _scrollController = ScrollController();
var elevation;

class _AppBarAnimatedState extends State<AppBarAnimated> {
  void onListen() {
    setState(() {
      elevation = _scrollController.offset;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(onListen);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(onListen);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (elevation == null) elevation = 0.0;
    if (elevation >= 6) elevation = 6.0;
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[50],
          elevation: elevation,
        ),
        body: ListView(
          controller: _scrollController,
          children: [
            Container(
              height: 200,
              color: Colors.amber[50],
            ),
            Container(
              height: 200,
              color: Colors.amber[50],
            ),
            Container(
              height: 200,
              color: Colors.amber[50],
            ),
            Container(
              height: 200,
              color: Colors.amber,
            ),
            Container(
              height: 200,
              color: Colors.green,
            ),
          ],
        ));
  }
}
