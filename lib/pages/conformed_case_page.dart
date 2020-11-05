import 'package:evalutor_app/constants/app_font_style.dart';
import 'package:evalutor_app/constants/colors.dart';
import 'package:evalutor_app/constants/dimen.dart';
import 'package:evalutor_app/constants/strings.dart';
import 'package:evalutor_app/widgets/conformed_case_widget.dart';
import 'package:evalutor_app/widgets/payment_widget.dart';
import 'package:evalutor_app/widgets/unquoted_case_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ConformedCasePage extends StatefulWidget {
  @override
  _ConformedCasePageState createState() => _ConformedCasePageState();
}

class _ConformedCasePageState extends State<ConformedCasePage> {
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
          EVALUATOR_APP,
          style: AppFontStyle.appBarTittle(PRIMARY_COLOR),
        ),
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(UNQUOTED_CASES, style: AppFontStyle.headingTextStyle(APP_BLACK_COLOR, textSize: 22.0)),
                  SizedBox(height: LINE_HEIGHT,),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 15,
                      shrinkWrap: true,
                      itemBuilder: (context, int index){
                        return ConformedCaseWidget();
                      }
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}
