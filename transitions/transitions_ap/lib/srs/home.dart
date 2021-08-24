import 'package:flutter/material.dart';
import 'package:transitions_ap/srs/page2.dart';
import 'package:transitions_ap/srs/util.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color = Colors.brown;
    final Color backgroundColor = Colors.white;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: color,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(context, createRoute(Page2()));
          },
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
          child: Text(
            'Page2',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class My extends StatelessWidget {
//   final Color color = Colors.black;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: color,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
//           onPressed: () {
//             Navigator.of(context).push(_createRoute());
//           },
//           child: Text('Go!'),
//         ),
//       ),
//     );
//   }
// }

// Route _createRoute() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => Page2(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       var begin = Offset(0.0, 1.0);
//       var end = Offset.zero;
//       var curve = Curves.ease;

//       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

//       return SlideTransition(
//         position: animation.drive(tween),
//         child: child,
//       );
//     },
//   );
// }

// class Page2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Text('Page 2'),
//       ),
//     );
//   }
// }
