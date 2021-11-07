import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget{

  ResultsPage({@required this.interpretation, @required this.resultText, @required this.bmiResult});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                // padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Center(
                  child: Text(
                    'Your Result',
                    style: kTitleTextStyle,
                  ),
                ),
              )
          ),
          Expanded(
            flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        resultText.toUpperCase(),
                        style: kresultTextStyle,
                        ),
                    Text(
                      bmiResult,
                      style: kBMITextStle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              ),
          ),
          BottomButton(
              onTap: (){
                Navigator.pop(context);
              },
              buttonTitle: 'RECALCULATE'
          ),
        ],
      ),
    );
  }
}