import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/constants.dart';


class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.interpretation, @required this.bmiResult,@required this.resultsText});

  final String bmiResult;
  final String resultsText;
  final String interpretation;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(12.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result',style:kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kactiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultsText.toUpperCase(),
                    style: kResultTextStyle,
                    ),
                    Text(
                     bmiResult,
                    style:kBmiTextStyle,
                    ), 
                    Text(
                     interpretation,
                     style: kBodyTextStyle,
                     textAlign: TextAlign.center,
                     ),
                ],
              ),),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: (){
            Navigator.pop(context);
          })
        ],
      ),
    );
  }
}