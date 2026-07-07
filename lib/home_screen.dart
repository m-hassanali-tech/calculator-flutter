import 'package:flutter/material.dart';
import 'package:calculator/constant.dart';
import 'package:calculator/components/button.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  var input = '';
  var output = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Calculator", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align( alignment: Alignment.bottomRight,
                          child: Text(input.toString(), style: ButtonHeadingStyle,)),
                      SizedBox(height: 15,),
                      Text(output.toString(), style: ButtonHeadingStyle,),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Button(Heading: 'AC',onPress: (){
                          input = '';
                          output = '';
                          setState(() {

                          });
                        },),
                        Button(Heading: '+/-',onPress: (){
                          input += '+/-';
                          setState(() {

                          });
                        },),
                        Button(Heading: '%',onPress: (){
                          input += '%';
                          setState(() {

                          });
                        },),
                        Button(Heading: '/', color: ButtonColor ,onPress: (){
                          input += '/';
                          setState(() {

                          });
                        },),

                      ],
                    ),
                    Row(
                      children: [
                        Button(Heading: '7',onPress: (){
                          input += '7';
                          setState(() {

                          });
                        },),
                        Button(Heading: '8',onPress: (){
                          input += '8';
                          setState(() {

                          });
                        },),
                        Button(Heading: '9',onPress: (){
                          input += '9';
                          setState(() {

                          });
                        },),
                        Button(Heading: 'x', color: ButtonColor, onPress: (){
                          input += 'x';
                          setState(() {

                          });
                        },),

                      ],
                    ),
                    Row(
                      children: [
                        Button(Heading: '4',onPress: (){
                          input += '4';
                          setState(() {

                          });
                        },),
                        Button(Heading: '5',onPress: (){
                          input += '5';
                          setState(() {

                          });
                        },),
                        Button(Heading: '6',onPress: (){
                          input += '6';
                          setState(() {

                          });
                        },),
                        Button(Heading: '+', color: ButtonColor, onPress: (){
                          input += '+';
                          setState(() {

                          });
                        },),

                      ],
                    ),
                    Row(
                      children: [
                        Button(Heading: '1',onPress: (){
                          input += '1';
                          setState(() {

                          });
                        },),
                        Button(Heading: '2',onPress: (){
                          input += '2';
                          setState(() {

                          });
                        },),
                        Button(Heading: '3',onPress: (){
                          input += '3';
                          setState(() {

                          });
                        },),
                        Button(Heading: '-', color: ButtonColor, onPress: (){
                          input += '-';
                          setState(() {

                          });
                        },),

                      ],
                    ),
                    Row(
                      children: [
                        Button(Heading: '.',onPress: (){
                          input += '.';
                          setState(() {

                          });
                        },),
                        Button(Heading: '0',onPress: (){
                          input += '0';
                          setState(() {

                          });
                        },),
                        Button(Heading: 'DEL',onPress: (){
                          input = input.substring(0, input.length - 1);
                          setState(() {
                            
                          });
                        },),
                        Button(Heading: '=', color: ButtonColor, onPress: (){
                          equalPress();
                          setState(() {

                          });
                        },),

                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void equalPress(){
    Parser p = Parser();
    Expression expression = p.parse(input);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    output = eval.toString();
  }
}

//
// Button(Heading: 'x',),
// Button(Heading: '+',),
// Button(),
// Button(Heading: '/',),
// Button(Heading: '=',),
//










