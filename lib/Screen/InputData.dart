import 'package:bmi_calculator/Screen/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/Constant.dart';
import 'package:bmi_calculator/Components/bottom_button.dart';
import 'package:bmi_calculator/Components/card_child.dart';
import 'package:bmi_calculator/Components/reusable_card.dart';
import 'package:bmi_calculator/Components/round_icon_button.dart';
import 'package:bmi_calculator/Calculator_brain.dart';
enum Gender {
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender ?selectedGender;
  int height=180;
  int weight=60;
  int age=19;

  // Color maleCardColour=inactiveCardColor;
  // Color FemaleCardColour=inactiveCardColor;
  //1==male 2==female
  // void updateColor(Gender selectedGender){
  //   // selectedGender==Gender.male?(maleCardColour==inactiveCardColor?):
  //   if(selectedGender==Gender.male){
  //     if(maleCardColour==inactiveCardColor){
  //       maleCardColour=activeCardColor;
  //       FemaleCardColour=inactiveCardColor;
  //     }else{
  //       maleCardColour=inactiveCardColor;
  //     }
  //   }if(selectedGender==Gender.female){
  //     if(FemaleCardColour==inactiveCardColor){
  //       FemaleCardColour=activeCardColor;
  //       maleCardColour=inactiveCardColor;
  //     }else{
  //       FemaleCardColour=inactiveCardColor;
  //     }
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                  // child: GestureDetector(
                  //   onTap: (){
                  //     // print("Male Card Tapped");
                  //     setState(() {
                  //       // updateColor(Gender.male);
                  //       selectedGender=Gender.male;
                  //     });
                  //   },
                      child: ReusableCard(
                        onPress: (){
                          setState(() {
                            selectedGender=Gender.male;
                          });
                        },
                        colour: selectedGender==Gender.male?kActiveCardColor:kInactiveCardColor,
                        cardChild: CardChildWidget(
                            iconz: FontAwesomeIcons.mars,
                            name:"Male"),)
                  // ),

              ),
              Expanded(
                  // child: GestureDetector(
                  //   onTap: (){
                  //     setState(() {
                  //       // updateColor(Gender.female);
                  //       selectedGender=Gender.female;
                  //     });
                  //   },
                    child: ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedGender=Gender.female;
                        });
                      },
                      colour: selectedGender==Gender.female?kActiveCardColor:kInactiveCardColor,
                      cardChild: CardChildWidget(
                          iconz: FontAwesomeIcons.venus,
                          name:"Female"),),
                  // )
              ),
            ],
          )),
          Expanded(
              child: ReusableCard(
                onPress: (){},
                colour: kActiveCardColor,
                cardChild: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      Text('Height',
                      style:kLabelStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(height.toString(),
                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900
                          ),
                          ),
                          Text('cm',
                            // style: TextStyle(
                            //     fontSize: 50.0,
                            //     fontWeight: FontWeight.w900
                            // ),
                          ),

                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            overlayColor: Color(0x29EB1555),
                            thumbColor: Color(0xFFEB1555),
                            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape: RoundSliderOverlayShape(overlayRadius: 22.0),
                          ),
                          child: Slider(value:height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            // activeColor: Color(0xFFEB1555),
                            inactiveColor: Color(0xFF8D8E98),
                            onChanged: (double newValue){
                              height=newValue.round();
                              setState(() {
                                height=newValue.round();
                              });
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
          ),
          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: ReusableCard(
                      onPress:(){},
                      colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("weight",style: kLabelStyle,),
                        Text(weight.toString(),style:TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900
                        ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children:  <Widget>[
                          RoundIconButton(icon:FontAwesomeIcons.plus,
                            onPressed: (){
                            setState(() {
                              weight=weight+1;
                            });
                            },),
                          // onPressed: (){},
                          // backgroundColor: Color(0xFF4C4F5E),
                          // child:Icon(Icons.add,color: Colors.white,) ),
                          SizedBox(width: 10.0,),
                          RoundIconButton(icon:FontAwesomeIcons.minus,
                              onPressed: (){
                                setState(() {
                                  weight=weight-1;
                                });
                              }),
                          // onPressed: (){},
                          // backgroundColor: Color(0xFF4C4F5E),
                          // child:Icon(Icons.add,color: Colors.white,) )

                        ]
                        )

                      ],
                    ),
                      // cardChild:CardChildWidget(
                      //     iconz: FontAwesomeIcons.venus,
                      //     name:"Female")
                  )
              ),
              Expanded(
                  child: ReusableCard(
                    onPress:(){},
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget> [
                        Text("Age",style: kLabelStyle,),
                        Text(age.toString(),style:TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900
                        ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(icon: FontAwesomeIcons.plus, onPressed: (){
                              setState(() {
                                age=age+1;
                              });

                            }),
                            SizedBox(width: 10.0,),
                            RoundIconButton(icon: FontAwesomeIcons.minus, onPressed: (){
                              setState(() {
                                age=age-1;
                              });
                            })
                          ],
                        )
                      ],
                    )
                  )
              )
            ],
          )),
          BottomButton(

              onTap:  (){
                CalculatorBrain calc=CalculatorBrain(height: height, weight: weight);

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>ResultPage(
                bmiResult: calc.calculateBMI(),
                resultText: calc.getResult(),
                interpretaion: calc.getInterpretation(),
              ),),);
          }, buttonTitle: 'CALCULATE',)
        ],
      )
      // floatingActionButton: Theme(
      //   data: ThemeData(colorScheme: ColorScheme.light().copyWith( // to use the primaryColor
      //     secondary: Colors.purple,
      //   ),),
      //   child: FloatingActionButton(
      //     child: Icon(Icons.add),
      //     onPressed: (){
      //       print("presses");
      //     },
      //   ),
      // ),
    );
  }
}








