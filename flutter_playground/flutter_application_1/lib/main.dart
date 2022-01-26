import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/calculator_buttons.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String history = "";
  String textToDisplay = "";
  String operation = "";
  String res = "";
  int firstNum = 0;
  int secondNum = 0;
  int operationStatus = 0;
  int resultStatus = 0;

  void btnClick(String btnVal) {
    if (btnVal == "AC") {
      firstNum = 0;
      secondNum = 0;
      operationStatus = 0;
      resultStatus = 0;
      setState(() {
        history = "";
        textToDisplay = "";
        operation = "";
        res = "";
      });
    }
    if (btnVal == "C") {
      if (resultStatus == 1) {
      } else {
        setState(() {
          textToDisplay = "";
          res = "";
        });
      }
    }

    if (btnVal == "1" ||
        btnVal == "2" ||
        btnVal == "3" ||
        btnVal == "4" ||
        btnVal == "5" ||
        btnVal == "6" ||
        btnVal == "7" ||
        btnVal == "8" ||
        btnVal == "9" ||
        btnVal == "0") {
      setState(() {
        textToDisplay += btnVal;
      });
    }
    if (operationStatus == 1) {
    } else {
      if (btnVal == "+") {
        firstNum = int.parse(textToDisplay);
        operationStatus = 1;
        operation = btnVal;
        setState(() {
          history = firstNum.toString() + btnVal;
          textToDisplay = "";
        });
      } else if (btnVal == "-") {
        firstNum = int.parse(textToDisplay);
        operationStatus = 1;
        operation = btnVal;
        setState(() {
          history = firstNum.toString() + btnVal;
          textToDisplay = "";
        });
      } else if (btnVal == "X") {
        firstNum = int.parse(textToDisplay);
        operationStatus = 1;
        operation = btnVal;
        setState(() {
          history = firstNum.toString() + btnVal;
          textToDisplay = "";
        });
      } else if (btnVal == "/") {
        firstNum = int.parse(textToDisplay);
        operationStatus = 1;
        operation = btnVal;
        setState(() {
          history = firstNum.toString() + btnVal;
          textToDisplay = "";
        });
      }
    }

    if (btnVal == "=") {
      if (operation == "+") {
        setState(() {
          history += textToDisplay.toString();
          res = (firstNum + int.parse(textToDisplay)).toString();
          textToDisplay = res;
        });
      }
      if (operation == "-") {
        setState(() {
          history += textToDisplay.toString();
          res = (firstNum - int.parse(textToDisplay)).toString();
          textToDisplay = res;
        });
      }
      if (operation == "X") {
        setState(() {
          history += textToDisplay.toString();
          res = (firstNum * int.parse(textToDisplay)).toString();
          textToDisplay = res;
        });
      }
      if (operation == "/") {
        setState(() {
          history += textToDisplay.toString();
          res = (firstNum / int.parse(textToDisplay)).toString();
          textToDisplay = res;
        });
      }
      resultStatus = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'unitConverters',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("myCalculator"),
        ),
        backgroundColor: Color(0xFF263238),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.only(right: 12),
              child: Text(
                history,
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0x66FFFFFF),
                ),
              ),
              alignment: const Alignment(1.0, 1.0),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  textToDisplay,
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.white,
                  ),
                ),
              ),
              alignment: const Alignment(1.0, 1.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButtons(
                  text: "AC",
                  fillColor: 0xFFF57F17,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callBack: btnClick,
                ),
                CalculatorButtons(
                  text: "C",
                  fillColor: 0xFFF57F17,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callBack: btnClick,
                ),
                CalculatorButtons(
                  text: "<",
                  fillColor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callBack: btnClick,
                ),
                CalculatorButtons(
                  text: "/",
                  fillColor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callBack: btnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButtons(
                  text: "9",
                  fillColor: 0xFFEFEBE9,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callBack: btnClick,
                ),
                CalculatorButtons(
                  text: "8",
                  fillColor: 0xFFEFEBE9,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callBack: btnClick,
                ),
                CalculatorButtons(
                  text: "7",
                  fillColor: 0xFFEFEBE9,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callBack: btnClick,
                ),
                CalculatorButtons(
                  text: "X",
                  fillColor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callBack: btnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButtons(
                  text: "6",
                  fillColor: 0xFFEFEBE9,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callBack: btnClick,
                ),
                CalculatorButtons(
                  text: "5",
                  fillColor: 0xFFEFEBE9,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callBack: btnClick,
                ),
                CalculatorButtons(
                  text: "4",
                  fillColor: 0xFFEFEBE9,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callBack: btnClick,
                ),
                CalculatorButtons(
                  text: "-",
                  fillColor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callBack: btnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButtons(
                  text: "3",
                  fillColor: 0xFFEFEBE9,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callBack: btnClick,
                ),
                CalculatorButtons(
                  text: "2",
                  fillColor: 0xFFEFEBE9,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callBack: btnClick,
                ),
                CalculatorButtons(
                  text: "1",
                  fillColor: 0xFFEFEBE9,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callBack: btnClick,
                ),
                CalculatorButtons(
                  text: "+",
                  fillColor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callBack: btnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButtons(
                  text: "+/-",
                  fillColor: 0xFFF57F17,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callBack: btnClick,
                ),
                CalculatorButtons(
                  text: "0",
                  fillColor: 0xFFEFEBE9,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callBack: btnClick,
                ),
                CalculatorButtons(
                  text: "00",
                  fillColor: 0xFFEFEBE9,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callBack: btnClick,
                ),
                CalculatorButtons(
                  text: "=",
                  fillColor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callBack: btnClick,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
