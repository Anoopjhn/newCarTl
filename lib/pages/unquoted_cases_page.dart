import 'package:evalutor_app/constants/app_font_style.dart';
import 'package:evalutor_app/constants/colors.dart';
import 'package:evalutor_app/constants/dimen.dart';
import 'package:evalutor_app/constants/strings.dart';
import 'package:evalutor_app/widgets/unquoted_cases_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnquotedCasesPage extends StatefulWidget {
  @override
  _UnquotedCasesPageState createState() => _UnquotedCasesPageState();
}

class _UnquotedCasesPageState extends State<UnquotedCasesPage> {
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
          "Unquoted Cases",
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
                      return UnquotedCasesWidget();
                    }
                )
              ],
            ),
          )
      ),
    );
  }
}
