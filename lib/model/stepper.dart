import 'package:flutter/material.dart';

import 'Color.dart';
import 'InputText.dart';


class stepper extends StatefulWidget {
  const stepper({Key? key}) : super(key: key);

  @override
  _stepperState createState() => _stepperState();
}

class _stepperState extends State<stepper> {
  int currentstep=0;
  List <Step> _mysteps(){
    List <Step>  _step = [
      Step(
        title: InputText(Input: "Step", TextColor: Blue, FontSize: 10),
        content: Text(""),
        isActive: currentstep >= 0,
      ),
      Step(
        title: InputText(Input: "Step", TextColor: Blue, FontSize: 10),
        content: Text(""),
        isActive: currentstep >= 1,
      ),
      Step(
        title: InputText(Input: "Step", TextColor: Blue, FontSize: 10),
        content: Text(""),
        isActive: currentstep >= 2,
      ),
      Step(
        title: InputText(Input: "Step", TextColor: Blue, FontSize: 10),
        content: Text(""),
        isActive: currentstep >= 3,
      ),
    ];
    return _step;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: 350,
      height: 200,
      child: Theme(
        data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
                primary: Blue
            )
        ),
        child: Stepper(
          steps: _mysteps(),
          type: StepperType.horizontal,
          currentStep: this.currentstep,
          onStepTapped: (step){setState(() {this.currentstep =step;});},
          onStepContinue: (){setState(() {if(this.currentstep < this._mysteps().length -1){this.currentstep = this.currentstep +1;}});},
          onStepCancel: (){setState(() {if (this.currentstep > 0){this.currentstep = this.currentstep - 1;}else{this.currentstep =0 ;}});},
        ),
      ),
    );
  }
}
