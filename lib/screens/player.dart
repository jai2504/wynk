import 'package:flutter/material.dart';
import 'package:wynk/data/reqdata.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Player extends StatefulWidget {
  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(children: [
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Column(
                children: [
                  Text(
                    "Teri Ban Jaungi (Reprise) ",
                    style: TextStyle(
                        fontSize: 22, color: Color.fromRGBO(245, 146, 0, 1)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Image.asset(imgList.elementAt(1)),
                  )
                ],
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(5),
              child: SfSliderTheme(
                data: SfSliderThemeData(
                  thumbColor: Colors.red,
                ),
                child: SfSlider(
                  min: 2.toDouble(),
                  max: 10.toDouble(),
                  interval: 1.toDouble(),
                  showTicks: true,
                  showLabels: true,
                  value: _value,
                  activeColor: Colors.grey[600],
                  inactiveColor: Colors.white,
                  onChanged: (dynamic newValue) {
                    setState(() {
                      _value = newValue;
                    });
                  },
                ),
              ))
        ]),
      )),
    );
  }
}
