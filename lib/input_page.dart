import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/gender_select_button.dart';

enum GenderType {
  male,
  female;
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType? genderSelected;
  int height = 150;

  void updateGender(GenderType gender) {
    genderSelected = (genderSelected != gender) ? gender : null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    child: GenderSelectButton(
                      onTap: () => setState(() {
                        updateGender(GenderType.male);
                      }),
                      icon: FontAwesomeIcons.mars,
                      text: 'Male',
                      color: (genderSelected == GenderType.male)
                          ? kActiveReusableCardColor
                          : kInactiveReusableCardColor,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: GenderSelectButton(
                        onTap: () => setState(() {
                              updateGender(GenderType.female);
                            }),
                        icon: FontAwesomeIcons.venus,
                        text: 'Female',
                        color: (genderSelected == GenderType.female)
                            ? kActiveReusableCardColor
                            : kInactiveReusableCardColor),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveReusableCardColor,
              onTap: () {},
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kBigNumberTextStyle,
                      ),
                      Text(
                        'CM',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTickMarkColor: Colors.white,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      thumbColor: kBottomContainerColor,
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                      overlayColor: kBottomContainerColor.withAlpha(0x29),
                      trackHeight: 1
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        onChanged: (value) {
                          setState(() {
                            height = value.toInt();
                          });
                        },
                        min: 120,
                        max: 220, ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kActiveReusableCardColor,
                    onTap: () {},
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kActiveReusableCardColor,
                    onTap: () {},
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: kBottomContainerColor,
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
