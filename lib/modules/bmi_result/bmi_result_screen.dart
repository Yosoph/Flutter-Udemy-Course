import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {

  final int result;
  final bool isMale;
  final int age;
  final int height;
  final int weight;

  BmiResultScreen({
    required this.result,
    required this.isMale,
    required this.age,
    required this.height,
    required this.weight,
});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.indigo[900],
       appBar: AppBar(
         leading: IconButton(
           onPressed: (){
             Navigator.pop(context);
           },
           icon: Icon(
             Icons.keyboard_arrow_left,
           ),
         ),
         title: Text(
           'BMI RESULT',
           style: TextStyle(
             fontSize: 30.0,
             fontWeight: FontWeight.bold,
           ),
         ),
         centerTitle: true,
         elevation: 0.0,
         backgroundColor: Colors.indigo[900],
       ),
       body: Padding (
         padding: const EdgeInsets.symmetric(
           horizontal: 15.0,
           vertical: 250.0,
         ),
         child: Container(
           child: Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                     'Gender: ${isMale ? 'Male' : 'Female'}',
                   style: TextStyle(
                     fontSize: 35.0,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                   ),
                 ),
                 Text(
                   'Height: $height cm',
                   style: TextStyle(
                     fontSize: 35.0,
                     fontWeight: FontWeight.bold,
                     color: Colors.white
                   ),
                 ),
                 Text(
                   'Weight: $weight kg',
                   style: TextStyle(
                     fontSize: 35.0,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,

                   ),
                 ),
                 Text(
                   'Age: $age',
                   style: TextStyle(
                     fontSize: 35.0,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                   ),
                 ),
                 Text(
                   'BMI Result: $result',
                   style: TextStyle(
                     fontSize: 35.0,
                     fontWeight: FontWeight.bold,
                     color: Colors.white
                   ),
                 ),
               ],
             ),
           ),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(
               10.0,
             ),
             color: Colors.white10,
           ),
         ),
       ),
     );
   }
 }
 