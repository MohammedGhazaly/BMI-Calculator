import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  bool isMale;
  double result = 0;
  int age = 0;
  BMIResultScreen({
    @required this.result = 0,
    @required this.age = 0,
    required this.isMale ,
});
  String checkBMI(){
    print(result);
    if(result < 18.5){
      return "Under Weight";
    }else if(result >= 18.5 && result <= 24.9){
      return "Normal";
    }
    else if(result >= 25 && result <= 29.9){
      return "Over Weight";
    }
    else if(result >= 30 && result <= 34.9){
      return "Obesity (Class I)";
    }
    else if(result >= 35 && result <= 39.9){
      return "Obesity (Class II)";
    }
    else{
      return "Extreme Obesity";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left_sharp
          ),
        ),
        title: Text("BMI Result"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Gender : ${isMale ? "Male":"Female"}",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Text(
              "BMI : ${result.toStringAsFixed(1)}",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Text(
              "Age : ${age}",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Text("Status : ${checkBMI()}",style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold))

          ],
        ),
      ),
    );
  }
}
