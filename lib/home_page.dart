import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/reusable_card.dart';
import 'package:velocity_x/velocity_x.dart';
import 'component.dart';
import 'constant.dart';
import 'icon_content.dart';
import 'round_icon.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        color: Colors.black,
                        child: IconContent(
                          label: "Male",
                          icon: FontAwesomeIcons.mars,
                        ),
                        onTap: () {
    }

                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        color: Colors.black,
                        child: IconContent(
                          label: "Female",
                          icon: FontAwesomeIcons.venus,
                        ),
                        onTap: () {}
                      ),
                    ),
                  ],
                ),
              ),

            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                        color: kActiveCardColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "HEIGHT",
                              style: kLabelTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  "text height",
                                  style: kLargeNumberLabelTextStyle,
                                ),
                                Text(
                                  "cm",
                                  style: kLabelTextStyle,
                                ),
                              ],
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0,
                                ),
                                overlayShape: RoundSliderOverlayShape(
                                  overlayRadius: 30.0,
                                ),
                                thumbColor: Colors.deepOrange,
                                overlayColor: Colors.deepOrange.shade900,
                                activeTrackColor: Colors.white,
                                inactiveTrackColor: Color(0xFF8D8E98),
                              ),
                              child: Slider(
                                value: 25,
                                min: kSliderMin,
                                max: kSliderMax,
                                divisions: (kSliderMax - kSliderMin).toInt(),
                                onChanged: (double newValue) {}

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ]
                  ),
                    ),


            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "WEIGHT",
                              style: kLabelTextStyle,
                            ),
                            Text(
                              "store",
                              style: kLargeNumberLabelTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {}

                                ),
                                SizedBox(width: 10),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: ()
    {}
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      ]
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                        color: kActiveCardColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "AGE",
                              style: kLabelTextStyle,
                            ),
                            Text(
                              "Age",
                              style: kLargeNumberLabelTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: (){},
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

            PageBottomButton(
              label: 'CALCULATE',
              onPress: () {
                // final calc =
                // Calculator(height: store.height, weight: store.weight);
                // final bmi = calc.calculate();
                // final result = calc.getResult();
                // final interpretation = calc.getInterpretation();
                //
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => ResultsPage(
                //           bmi: bmi,
                //           result: result,
                //           interpretation: interpretation,
                //         )));
              },
            ),
          ],
        ));
  }
}
