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

import 'package:flutter/material.dart';

// Checkbox and Radio
//  SizedBox(
//               height: 300,
//               child: ListView.builder(
//                   itemCount: name.length,
//                   shrinkWrap: true,
//                   itemBuilder: (context, index) {
//                     return Card(
//                       child: Row(
//                         children: [
//                           Text(name[index]),
//                           Checkbox(
//                             checkColor: Colors.white,
//                             value: isChecked[index],
//                             onChanged: (bool? value) {
//                               setState(() {
//                                 isChecked[index] = value!;
//                                 log(value.toString());
//                               });
//                             },
//                           ),
//                         ],
//                       ),
//                     );
//                   }),
//             ),

// RadioListTile<SingingCharacter>(
//               title: const Text('Lafayette'),
//               value: SingingCharacter.lafayette,
//               groupValue: _character,
//               onChanged: (SingingCharacter? value) {
//                 setState(() {
//                   _character = value;
//                 });
//               },
//             ),
            // RadioListTile<SingingCharacter>(
            //   title: const Text('Thomas Jefferson'),
            //   value: SingingCharacter.jefferson,
            //   groupValue: _character,
            //   onChanged: (SingingCharacter? value) {
            //     setState(() {
            //       _character = value;
            //     });
            //   },
            // ),