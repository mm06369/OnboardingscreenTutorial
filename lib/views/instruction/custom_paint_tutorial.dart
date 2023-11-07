
import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';

class CustomPaintTutorial extends StatelessWidget{

  const CustomPaintTutorial({super.key});

@override
Widget build(BuildContext context){
  return const Scaffold(
    body: Column(
        children: [
          BgShape()
        ],
      // child: Stack(
      //   children: [
      //     Opacity(opacity: 0.5,
      //     child: ClipPath(
      //       clipper: WaveClipper(),
      //       child: Container(
      //         color: Colors.deepOrangeAccent,
      //         height: 200,
      //       ),
      //     ),
      //     ),
      //     Opacity(opacity: 0.5,
      //     child: ClipPath(
      //       clipper: WaveClipper(),
      //       child: Container(
      //         color: Colors.deepOrangeAccent,
      //         height: 220,
      //       ),
      //     ),
      //     ),
      //     const Positioned(
      //       left: 0,
      //       right: 0,
      //       top: 0,
      //       bottom: 50,
      //       child: Center(
      //         child: Text("Q-Sol Todo App", textAlign: TextAlign.center, 
      //         style: TextStyle(fontFamily: 'Patua One', fontSize: 20, fontWeight: FontWeight.w500
      //         )),
      //       )),
      //   ],
      // ),
    )
    );
}
}


class BgShape extends StatelessWidget {
  const BgShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 400,
          width: getDeviceWidth(context) * 0.5,
          color: Colors.green,
        ),
         Container(
          height: 400,
          width: getDeviceWidth(context) * 0.5,
          color: Colors.green[800],
        ),
      ],
    );
  }
}

class WaveClipper extends CustomClipper<Path>{

@override
Path getClip(Size size){
  // debugPrint(size.width.toString());
  var path = Path();
  path.lineTo(0, size.height);
  var firstStart = Offset(size.width / 5, size.height);
  var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
  path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

  var secondStart = Offset(size.width - (size.width / 3.24), size.height - 105);
  var secondEnd = Offset(size.width, size.height - 10);

  path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
  path.lineTo(size.width, 0);
  path.close();
  return path;
}

@override
bool shouldReclip(CustomClipper oldClipper) => false;

}

// class CirclePainter extends CustomPainter{

// @override
// void paint(Canvas canvas, Size size){
//   final paint = Paint()
//   ..strokeWidth = 10
//   ..color = Colors.amber
//   ..style = PaintingStyle.stroke;

//   final center = Offset(size.width * 0.5, size.height * 0.5);
  
//   canvas.drawCircle(center, size.width * 0.25, paint);
// }

// @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }

// class RectanglePainter extends CustomPainter{

// @override
// void paint(Canvas canvas, Size size){
//   final paint = Paint()
//   ..strokeWidth = 10
//   ..color = Colors.amber
//   ..style = PaintingStyle.stroke;

//   final a = Offset(size.width * 1 / 4, size.height * 1 / 4);
//   final b = Offset(size.width * 3/4, size.height * 3/4);

//   final rect = Rect.fromPoints(a,b);
//   canvas.drawRRect(RRect.fromRectAndRadius(rect, const Radius.circular(50)), paint);
//   // canvas.drawRect(rect, paint);
//   }

// @override
// bool shouldRepaint(CustomPainter oldDelegate) => false;

// }

// class LinePainter extends CustomPainter {

// @override
// void paint(Canvas canvas, Size size){
//   final paint = Paint()..color = Colors.amber..strokeCap = StrokeCap.round;
//   paint.strokeWidth = 10;

//   canvas.drawLine(
//     Offset(size.width  * 1 / 6, size.height * 1 / 2),
//     Offset(size.width * 5 / 6, size.height * 1 / 2),
//     paint
//   );
// }

// @override
// bool shouldRepaint(CustomPainter oldDelegate) => false;
// }