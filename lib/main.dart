import 'package:google_fonts/google_fonts.dart';

import './widgets/calclulator_button.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(CalculatorApp(key: UniqueKey()));
}

class CalculatorApp extends StatefulWidget {
  CalculatorApp({required Key key}) : super(key: key);

  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  late int firstNum;
  late int secondNum;
  String history = '';
  String textToDisplay = '';
  late String res;
  late String operation;

  void ItemOnClick(String ItemValue) {
    print(ItemValue);

    if (ItemValue == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    }
    else if (ItemValue == '+' || ItemValue == '-' || ItemValue == '*' || ItemValue == '/') {
      if (textToDisplay.isNotEmpty) {
        firstNum = int.parse(textToDisplay);
        operation = ItemValue;
        res = '';
        textToDisplay = '';
      }
    } else if (ItemValue == '=') {
      if (textToDisplay.isNotEmpty) {
        secondNum = int.parse(textToDisplay);
        switch (operation) {
          case '+':
            res = (firstNum + secondNum).toString();
            break;
          case '-':
            res = (firstNum - secondNum).toString();
            break;
          case '*':
            res = (firstNum * secondNum).toString();
            break;
          case '/':
            res = (firstNum / secondNum).toString();
            break;
        }
        history = '$firstNum $operation $secondNum';
      }
    } else {
      res = textToDisplay + ItemValue; // just concatenate digits
    }

    setState(() {
      textToDisplay = res;
    });


    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kalkulator',
      theme: ThemeData(primarySwatch: Colors.blueGrey,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.blueGrey,
      )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Kalkulator')
        ),
        backgroundColor: Colors.lightBlueAccent,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    history, style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 24,
                      color: Color(0x66FFFFFFF),
                    )
                  )
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    textToDisplay, style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                    fontSize: 48,
                    color: Colors.white,
                    )
                  )
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(text: '1',
                textColor: 0xFF000000,
                fillColor: 0x9B2F65D1,
                textSize: 20,
                callback: ItemOnClick,),
                CalculatorButton(text: '2',
                  textColor: 0xFF000000,
                  fillColor: 0x9B2F65D1,
                  textSize: 20,
                callback: ItemOnClick,),
                CalculatorButton(text: '3',
                  textColor: 0xFF000000,
                  fillColor: 0x9B2F65D1,
                  textSize: 20,
                  callback: ItemOnClick,),
                CalculatorButton(text: '/',
                  textColor: 0xFF000000,
                  fillColor: 0xFFFFB200,
                  textSize: 20,
                  callback: ItemOnClick,)
              ],
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(text: '4',
                    textColor: 0xFF000000,
                    fillColor: 0x9B2F65D1,
                    textSize: 20,
                    callback: ItemOnClick,),
                  CalculatorButton(text: '5',
                    textColor: 0xFF000000,
                    fillColor: 0x9B2F65D1,
                    textSize: 20,
                    callback: ItemOnClick,),
                  CalculatorButton(text: '6',
                    textColor: 0xFF000000,
                    fillColor: 0x9B2F65D1,
                    textSize: 20,
                    callback: ItemOnClick,),
                  CalculatorButton(text: '*',
                    textColor: 0xFF000000,
                    fillColor: 0xFFFFB200,
                    textSize: 20,
                    callback: ItemOnClick,)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(text: '7',
                    textColor: 0xFF000000,
                    fillColor: 0x9B2F65D1,
                    textSize: 20,
                    callback: ItemOnClick,),
                  CalculatorButton(text: '8',
                    textColor: 0xFF000000,
                    fillColor: 0x9B2F65D1,
                    textSize: 20,
                    callback: ItemOnClick,),
                  CalculatorButton(text: '9',
                    textColor: 0xFF000000,
                    fillColor: 0x9B2F65D1,
                    textSize: 20,
                    callback: ItemOnClick,),
                  CalculatorButton(text: '-',
                    textColor: 0xFF000000,
                    fillColor: 0xFFFFB200,
                    textSize: 20,
                    callback: ItemOnClick,)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(text: 'C',
                    textColor: 0xFF000000,
                    fillColor: 0xFFFFB200,
                    textSize: 20,
                    callback: ItemOnClick,),
                  CalculatorButton(text: '0',
                    textColor: 0xFF000000,
                    fillColor: 0x9B2F65D1,
                    textSize: 20,
                    callback: ItemOnClick,),
                  CalculatorButton(text: '=',
                    textColor: 0xFF000000,
                    fillColor: 0xFFFFB200,
                    textSize: 20,
                    callback: ItemOnClick,),
                  CalculatorButton(text: '+',
                    textColor: 0xFF000000,
                    fillColor: 0xFFFFB200,
                    textSize: 20,callback: ItemOnClick,)
                ],
              ),
              
              
          ],
          ),
        ),
      ),
    );
  }

  
    
  
}
