import 'package:calculator_taqanarslan/component/buttons/main_button.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  TextEditingController topController = TextEditingController();
  TextEditingController bottomController = TextEditingController();
  String result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                result,
                style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 45,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white, border: Border.all(color: Colors.black, width: 1)),
              width: 300,
              child: TextField(controller: topController, cursorColor: Colors.black, decoration: InputDecoration(hintText: "1. sayıyı buraya yazın"), keyboardType: TextInputType.number),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 45,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white, border: Border.all(color: Colors.black, width: 1)),
              width: 300,
              child: TextField(controller: bottomController, cursorColor: Colors.black, decoration: InputDecoration(hintText: "2. sayıyı buraya yazın"), keyboardType: TextInputType.number),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {
                      result = (int.parse(topController.text) + int.parse(bottomController.text)).toString();
                    },
                    child: MainButton(element: "+")),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                    onTap: () {
                      result = (int.parse(topController.text) - int.parse(bottomController.text)).toString();
                    },
                    child: MainButton(element: "-")),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                    onTap: () {
                      result = (int.parse(topController.text) * int.parse(bottomController.text)).toString();
                    },
                    child: MainButton(element: "*")),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                    onTap: () {
                      if (bottomController.text != "0") {
                        result = (int.parse(topController.text) - int.parse(bottomController.text)).toString();
                      } else {
                        result = "Sıfıra Bölme Hatası";
                      }
                    },
                    child: MainButton(element: "/")),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        result;
                      });
                    },
                    child: MainButton(element: "=")),
                SizedBox(
                  width: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
