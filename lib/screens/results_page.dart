import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';


class ResultsPage extends StatelessWidget {
  String bmi;
  String result;
  String interpretation;
  ResultsPage({required this.bmi, required this.result, required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(left: 15.0),
              alignment: Alignment.centerLeft,
                child: Text(
              'Your Result',
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            )),
          ),
          Expanded(
            flex: 4,
            child: ReusableCard(
              onTap: () {},
              color: kActiveReusableCardColor,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(result.toUpperCase(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),),
                    Text(bmi, style: TextStyle(fontSize: 75, fontWeight: FontWeight.bold),),
                    Text(
                        interpretation,  style: TextStyle(fontSize: 18, ),textAlign: TextAlign.center,),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(title: 'ReCalculate', onPressed: (){
            Navigator.pop(context);
          },)
        ],
      ),
    );
  }
}
