import 'package:evalutor_app/constants/app_font_style.dart';
import 'package:evalutor_app/constants/colors.dart';
import 'package:evalutor_app/constants/dimen.dart';
import 'package:evalutor_app/constants/strings.dart';
import 'package:evalutor_app/widgets/evaluation_details_widget.dart';
import 'package:evalutor_app/widgets/registration_details_widget.dart';
import 'package:evalutor_app/widgets/vehicle_details_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:fa_stepper/fa_stepper.dart';

class AddNewCasePage extends StatefulWidget {
  @override
  _AddNewCasePageState createState() => _AddNewCasePageState();
}

class _AddNewCasePageState extends State<AddNewCasePage> {

  @override
  Widget build(BuildContext context) {
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
              FAStepper(
                physics: NeverScrollableScrollPhysics(),
                type: FAStepperType.vertical,
                titleHeight: 120,
                currentStep: 0,
                titleIconArrange: FAStepperTitleIconArrange.row,
                steps:[
                  FAStep(state: FAStepstate.complete, title: Text(REGISTRATION_DETAILS,style: AppFontStyle.titleAppBarStyle2(APP_BLACK_COLOR)), content: ResistrationDetailsWidget()),
                  FAStep(state: FAStepstate.editing, title: Text(VEHICLE_DETAILS,style: AppFontStyle.titleAppBarStyle2(APP_BLACK_COLOR)), content: VehicleDetailsWidget()),
                  FAStep(state: FAStepstate.editing, title: Text(EVALUATION_DETAILS,style: AppFontStyle.titleAppBarStyle2(APP_BLACK_COLOR)), content: EvaluationDetailsWidget(), isActive: true,),
                ],
                controlsBuilder: (BuildContext context,
                    {VoidCallback onStepContinue, VoidCallback onStepCancel}) =>
                    Container(),
              ),
                ],
              )
          ),
      ),
      );
  }
}
