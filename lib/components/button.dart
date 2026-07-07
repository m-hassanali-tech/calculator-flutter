import 'package:flutter/material.dart';
import 'package:calculator/constant.dart';

class Button extends StatelessWidget {

  final String Heading;
  final Color color;
  final VoidCallback onPress;
  const Button({super.key,
    this.Heading = '',
    this.color = const Color(0xffa5a5a5),
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,

            ),
            child: Center(
              child: Text(Heading, style: ButtonHeadingStyle,),
            ),
          ),
        ),
      ),
    );
  }
}


//final Colors color;


// Padding(
// padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
// child: Container(
// height: 50,
// decoration: BoxDecoration(
// color: ButtonColor,
// borderRadius: BorderRadius.circular(50),
// ),
// child: Center(
// child: Text("Login", style: ButtonHeadingStyle ),
// )
// ),
// );