import 'package:bmi_calculator/Screen/InputData.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constant.dart';
import 'package:bmi_calculator/Components/bottom_button.dart';
import 'package:bmi_calculator/Components/reusable_card.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiResult,required this.resultText,required this.interpretaion});
final String bmiResult;
final String resultText;
final String interpretaion;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Container(
            child: Text("Your Result",style:kTitleTextStyle),
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
          ),),
          Expanded(
            flex:5,
              child: ReusableCard(
                onPress: (){},
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(resultText.toUpperCase(),style:kResultTextStyle ,),
                    Text(bmiResult.toUpperCase(),style:kBMITextStyle ,),
                    Text(interpretaion.toUpperCase(),style:kBodyTextStyle,textAlign: TextAlign.center,),

                  ],
                ),
              ),
          ),
          BottomButton(

            onTap:  (){
              Navigator.pop(context);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (Context)=>InputPage(),),);
            },
            buttonTitle: 'Re-CALCULATE',)
        ],
      ),
    );
  }
}
