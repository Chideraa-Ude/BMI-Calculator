import 'package:flutter/material.dart';

class BMICode extends StatefulWidget {
  @override
  _BMICodeState createState() => _BMICodeState();
}

class _BMICodeState extends State<BMICode> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  double _result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My BMI Calculator'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background_image.jpg"),
            fit: BoxFit.cover,
            ),
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: TextField(
                controller: _heightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, backgroundColor: Colors.white60, color: Colors.black),
                  labelText: 'Enter your height in cm:',
                  icon: Icon(Icons.trending_up),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: TextField(
                controller: _weightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, backgroundColor: Colors.white60, color: Colors.black),
                  labelText: 'Enter your weight in kg:',
                  icon: Icon(Icons.line_weight),
                ),
              ),
            ),
            SizedBox(height: 30),
            RaisedButton(
              color: Colors.blueGrey,
              child: Text(
                "Calculate",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: calcBMI,
            ),
            SizedBox(height: 10),
            Text(
              _result == null ? "Enter Value" : "Your BMI is ${_result.toStringAsFixed(2)}",
              style: TextStyle(
                backgroundColor: Colors.white70,
                color: Colors.black,
                fontSize: 19.4,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void calcBMI() {
    double height = double.parse(_heightController.text) / 100; // To convert centimeters to meters
    double weight = double.parse(_weightController.text);

    double result = weight / height * height;
    _result = result;
    setState(() {});
  }
}

