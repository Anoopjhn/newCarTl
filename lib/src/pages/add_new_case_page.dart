
import 'package:evalutor_app/src/constants/app_font_style.dart';
import 'package:evalutor_app/src/constants/colors.dart';
import 'package:evalutor_app/src/constants/dimen.dart';
import 'package:evalutor_app/src/constants/strings.dart';
import 'package:evalutor_app/src/widgets/evaluation_details_widget.dart';
import 'package:evalutor_app/src/widgets/registration_details_widget.dart';
import 'package:evalutor_app/src/widgets/vehicle_details_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:fa_stepper/fa_stepper.dart';
import 'package:provider/provider.dart';

class AddNewCasePage extends StatefulWidget {
  @override
  _AddNewCasePageState createState() => _AddNewCasePageState();
}

class _AddNewCasePageState extends State<AddNewCasePage> {
  var currentStep = 0;

  @override
  Widget build(BuildContext context) {
    List<Step> steps = [
      Step(
        title: Text('Registration Detail', style: AppFontStyle.labelTextStyle2(APP_BLACK_COLOR),),
        content: ResistrationDetailsWidget(),
        state: currentStep == 0 ? StepState.editing : StepState.indexed,
        isActive: true,
      ),
      Step(
        title: Text('Vehicle Details', style: AppFontStyle.labelTextStyle2(APP_BLACK_COLOR),),
        content: VehicleDetailsWidget(),
        state: currentStep == 1 ? StepState.editing : StepState.indexed,
        isActive: true,
      ),
      Step(
        title: Text('Evaluation Details', style: AppFontStyle.labelTextStyle2(APP_BLACK_COLOR),),
        content: EvaluationDetailsWidget(),
        state: StepState.complete,
        isActive: true,
      ),
    ];
    return Scaffold(
        backgroundColor: APP_WHITE_COLOR,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: PRIMARY_COLOR,
              )),
          backgroundColor: APP_WHITE_COLOR,
          elevation: 0,
          centerTitle: true,
          title: Text(
            EVALUATOR,
            style: AppFontStyle.appBarTittle(PRIMARY_COLOR),
          ),
        ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                title: Text(ADD_NEW_CASE, style: AppFontStyle.regularHeadingTextStyle(APP_BLACK_COLOR, textSize: 20.0),),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('No photos', style: AppFontStyle.regularTextStyle4(APP_GREY_COLOR),),
                    SizedBox(width: LINE_HEIGHT* 0.5),
                    CircleAvatar(
                      backgroundColor: PRIMARY_COLOR,
                      radius: ICON_SIZE,
                      child: Icon(Icons.camera_alt_outlined, color: APP_WHITE_COLOR,),
                    )
                  ],
                ),
              ),
              Theme(
                data: ThemeData(
                    primaryColor: PRIMARY_COLOR
                ),
                child: Stepper(
                  physics: NeverScrollableScrollPhysics(),
                  currentStep: this.currentStep,
                  steps: steps,
                  type: StepperType.vertical,
                  onStepTapped: (step) {
                    setState(() {
                      currentStep = step;
                    });
                  },
                  onStepContinue: () {
                    setState(() {
                      if (currentStep < steps.length - 1) {
                        if (currentStep == 0) {
                      currentStep = currentStep + 1;
                      } else if (currentStep == 1) {
                      currentStep = currentStep + 1;
                      }
                      } else {
                      currentStep = 0;
                      }
                    });
                  },
                  onStepCancel: () {
                    setState(() {
                      if (currentStep > 0) {
                        currentStep = currentStep - 1;
                      } else {
                        currentStep = 0;
                      }
                    });
                  },
                  controlsBuilder: (BuildContext context, {VoidCallback onStepContinue, VoidCallback onStepCancel } ){
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: currentStep != 2?button(Icons.arrow_forward_ios_outlined):button(Icons.download_done_outlined),
                          onTap: onStepContinue,
                        ),
                        TextButton(onPressed: onStepCancel, child: Text("Cancel", style: AppFontStyle.regularTextStyle4(APP_BLACK_COLOR),))

                      ],
                    );
                  },
                ),
              ),
                ],
              )
          ),
      ),
      );
  }
  CircleAvatar button(IconData icon){
    return CircleAvatar(
      backgroundColor: PRIMARY_COLOR,
      radius: ICON_SIZE,
      child: Icon(icon, color: APP_WHITE_COLOR,),
    );
  }
}

