
import 'package:evalutor_app/src/constants/app_font_style.dart';
import 'package:evalutor_app/src/constants/colors.dart';
import 'package:evalutor_app/src/constants/dimen.dart';
import 'package:evalutor_app/src/constants/strings.dart';
import 'package:evalutor_app/src/widgets/team_performance_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class ReportsPage extends StatefulWidget {
  @override
  _ReportsPageState createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
 GlobalKey<ScaffoldState> reportPageKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: reportPageKey,
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
          REPORTS,
          style: AppFontStyle.appBarTittle(PRIMARY_COLOR),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: LINE_HEIGHT),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),border: Border.all(width: 0.5,color: APP_GREY_COLOR)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(SUMMARY, style: AppFontStyle.headingTextStyle(APP_BLACK_COLOR, textSize: 20.0),),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ListTile(

                              title: Text("Unquoted Cases", style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR, textSize: 20.0),),
                              subtitle: Text("12 Cases", style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                              trailing: Icon(Icons.navigate_next, color: APP_BLACK_COLOR,),
                              onTap: (){
                                Navigator.pushNamed(context, UNQUOTED_CASES_PAGE);
                              },
                            ),
                            Divider(),
                            ListTile(
                              onTap: (){
                                Navigator.pushNamed(context, ALLOCATED_CASE_PAGE);
                              },
                              title: Text(ALLOCATED_CASES, style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR, textSize: 20.0),),
                              subtitle: Text("12 Cases", style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                              trailing: Icon(Icons.navigate_next, color: APP_BLACK_COLOR,),
                            ),
                            Divider(),
                            ListTile(
                              onTap: (){
                                Navigator.pushNamed(context, DEAL_OK_CASES_PAGE);
                              },
                              title: Text("Deal Ok Cases", style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR, textSize: 20.0),),
                              subtitle: Text("12 Cases", style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                              trailing: Icon(Icons.navigate_next, color: APP_BLACK_COLOR,),
                            ),
                            Divider(),
                            ListTile(
                              onTap: (){
                                Navigator.pushNamed(context, UNQUOTED_CASE_PAGE);
                              },
                              title: Text(PRICE_NOT_QUOTED, style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR, textSize: 20.0),),
                              subtitle: Text("12 Cases", style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                              trailing: Icon(Icons.navigate_next, color: APP_BLACK_COLOR,),
                            ),
                            Divider(),
                            ListTile(
                              onTap: (){
                                Navigator.pushNamed(context, PAYMENT_PAGE);
                              },
                              title: Text(PAYMENTS, style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR, textSize: 20.0),),
                              subtitle: Text("12 Cases", style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                              trailing: Icon(Icons.navigate_next, color: APP_BLACK_COLOR,),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: LINE_HEIGHT),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),border: Border.all(width: 0.5,color: APP_GREY_COLOR)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(TEAM_PERFORMANCE, style: AppFontStyle.headingTextStyle(APP_BLACK_COLOR, textSize: 20.0),),
                        ),
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index){
                            return TeamPerformancewidget();
                          },
                          itemCount: 8,
                        )
                          ],
                        )
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  _onDateSelected() {
//TODO implement logic
  }
}
