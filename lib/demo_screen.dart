// import 'package:flutter/material.dart';
// import 'package:grosseryapp/home_screen.dart';

// class DemoScreen extends StatefulWidget {
//   const DemoScreen({super.key});

//   @override
//   State<DemoScreen> createState() => _DemoScreenState();
// }

// class _DemoScreenState extends State<DemoScreen> {
//   String name = 'uigbefuigedfguygf';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.yellow,
//       ),
//       body: Column(
//         children: [
//           Text(
//             name,
//             style: TextStyle(fontSize: 30),
//           ),
//           Center(
//             child: ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (_) => HomeCSreen(
//                               text: name,
//                             )));
//               },
//               child: Text('Next'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
