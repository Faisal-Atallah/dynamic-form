// import 'package:flutter/material.dart';

// class BottomSheet extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Color(0xFF737373),
//       height: 400,
//       child: Container(
//         child: Column(
//       children: <Widget>[
//         SizedBox(height: 40.0),
//         Container(
//           height: 200,
//           width: double.infinity,
//           child: Image.asset('assets/images/healthcare.jpg'),
//         ),
//         SizedBox(height: 20.0),
//         new Center(
//           child:
//               // Below is the code which will help you to achive Buttons Bar as show above
//               new Row(
//             children: <Widget>[
//               ButtonBar(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   SizedBox(
//                     width: 170,
//                     child: RaisedButton(
//                         onPressed: () {},
//                         color: Colors.lightBlue[800],
//                         child: Text('PATIENT SIGNUP'),
//                         padding: EdgeInsets.all(15),
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.horizontal(
//                                 left: Radius.circular(5.0),
//                                 right: Radius.circular(5.0)))),
//                   ),
//                   SizedBox(
//                     width: 170,
//                     child: RaisedButton(
//                         onPressed: () {},
//                         padding: EdgeInsets.all(15),
//                         child: Text("PHYSICIAN SIGNUP"),
//                         color: Colors.lightBlue[800],
//                         textColor: Colors.white,
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.horizontal(
//                                 left: Radius.circular(5.0),
//                                 right: Radius.circular(5.0)))),
//                   )
//                 ],
//               )
//             ],
//             mainAxisSize: MainAxisSize.min,
//           ),
//         ),
//       ],
//     ),
//         decoration: BoxDecoration(
//           color: Theme.of(context).canvasColor,
//           borderRadius: BorderRadius.only(
//             topLeft: const Radius.circular(20),
//             topRight: const Radius.circular(20),
//           ),
//         ),
//       ),
//     );
//   }

//   Column buildBottomNavigationMenu() {
    
//   }
// }

// // void selectItem(String name) {
// //   Navigator.pop(context);
// //   setState(() {
// //     _selectedItem = name;
// //   });
// // }
