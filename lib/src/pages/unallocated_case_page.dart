
import 'package:evalutor_app/src/constants/app_font_style.dart';
import 'package:evalutor_app/src/constants/colors.dart';
import 'package:evalutor_app/src/constants/dimen.dart';
import 'package:evalutor_app/src/constants/strings.dart';
import 'package:evalutor_app/src/widgets/unallocated_case_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnAllocatedCasePage extends StatefulWidget {
  @override
  _UnAllocatedCasePageState createState() => _UnAllocatedCasePageState();
}

class _UnAllocatedCasePageState extends State<UnAllocatedCasePage> {
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
          UNALLOCATED_CASES,
          style: AppFontStyle.appBarTittle(PRIMARY_COLOR),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: LINE_HEIGHT,),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 15,
                    shrinkWrap: true,
                    itemBuilder: (context, int index){
                      return UnAllocatedCaseWidget();
                    }
                )
              ],
            ),
          )
      ),
    );
  }
}
