import 'package:evalutor_app/constants/app_font_style.dart';
import 'package:evalutor_app/constants/colors.dart';
import 'package:evalutor_app/constants/dimen.dart';
import 'package:evalutor_app/constants/strings.dart';
import 'package:evalutor_app/widgets/grid_view_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void displayBottomSheet(BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.grain, color: APP_BLACK_COLOR),
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          ListTile(
                            leading: Icon(Icons.beenhere_outlined,
                                color: APP_BLACK_COLOR),
                            title: Text(
                              "Unquoted Cases",
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  maxRadius: 16,
                                  backgroundColor: PRIMARY_COLOR,
                                  child: Text("9+",
                                      style: TextStyle(color: APP_WHITE_COLOR)),
                                ),
                                SizedBox(width: LINE_HEIGHT),
                                Icon(
                                  Icons.navigate_next,
                                  color: APP_BLACK_COLOR,
                                )
                              ],
                            ),
                            onTap: (){
                              Navigator.pushNamed(context, UNQUOTED_CASES_PAGE);
                            },
                          ),
                          ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, PENDING_PAGE);
                            },
                            leading: Icon(Icons.hourglass_empty_outlined,
                                color: APP_BLACK_COLOR),
                            title: Text(
                              PENDING_CASES,
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  maxRadius: 16,
                                  backgroundColor: PRIMARY_COLOR,
                                  child: Text("9+",
                                      style: TextStyle(color: APP_WHITE_COLOR)),
                                ),
                                SizedBox(width: LINE_HEIGHT),
                                Icon(
                                  Icons.navigate_next,
                                  color: APP_BLACK_COLOR,
                                )
                              ],
                            ),
                          ),
                          ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, ALLOCATED_CASE_PAGE);
                            },
                            leading: Icon(Icons.assignment_outlined,
                                color: APP_BLACK_COLOR),
                            title: Text(
                              ALLOCATED_CASES,
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  maxRadius: 16,
                                  backgroundColor: PRIMARY_COLOR,
                                  child: Text("9+",
                                      style: TextStyle(color: APP_WHITE_COLOR)),
                                ),
                                SizedBox(width: LINE_HEIGHT),
                                Icon(
                                  Icons.navigate_next,
                                  color: APP_BLACK_COLOR,
                                )
                              ],
                            ),
                          ),
                          ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, UNALLOCATED_CASE_PAGE);
                            },
                            leading: Icon(Icons.assignment_outlined,
                                color: APP_BLACK_COLOR),
                            title: Text(
                              UNALLOCATED_CASES,
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  maxRadius: 16,
                                  backgroundColor: PRIMARY_COLOR,
                                  child: Text("9+",
                                      style: TextStyle(color: APP_WHITE_COLOR)),
                                ),
                                SizedBox(width: LINE_HEIGHT),
                                Icon(
                                  Icons.navigate_next,
                                  color: APP_BLACK_COLOR,
                                )
                              ],
                            ),
                          ),
                          ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, DEAL_OK_CASES_PAGE);
                            },
                            leading: Icon(Icons.assignment_outlined,
                                color: APP_BLACK_COLOR),
                            title: Text(
                              "Deal Ok Cases",
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  maxRadius: 16,
                                  backgroundColor: PRIMARY_COLOR,
                                  child: Text("9+",
                                      style: TextStyle(color: APP_WHITE_COLOR)),
                                ),
                                SizedBox(width: LINE_HEIGHT),
                                Icon(
                                  Icons.navigate_next,
                                  color: APP_BLACK_COLOR,
                                )
                              ],
                            ),
                          ),
                          ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, JUNK_LEAD_PAGE);
                            },
                            leading: Icon(Icons.assignment_outlined,
                                color: APP_BLACK_COLOR),
                            title: Text(
                              "Junk Leads",
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  maxRadius: 16,
                                  backgroundColor: PRIMARY_COLOR,
                                  child: Text("9+",
                                      style: TextStyle(color: APP_WHITE_COLOR)),
                                ),
                                SizedBox(width: LINE_HEIGHT),
                                Icon(
                                  Icons.navigate_next,
                                  color: APP_BLACK_COLOR,
                                )
                              ],
                            ),
                          ),
                          ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, FUND_TRANSFER_PAGE);
                            },
                            leading: Icon(Icons.assignment_outlined,
                                color: APP_BLACK_COLOR),
                            title: Text(
                              "Fund Transfers",
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  maxRadius: 16,
                                  backgroundColor: PRIMARY_COLOR,
                                  child: Text("9+",
                                      style: TextStyle(color: APP_WHITE_COLOR)),
                                ),
                                SizedBox(width: LINE_HEIGHT),
                                Icon(
                                  Icons.navigate_next,
                                  color: APP_BLACK_COLOR,
                                )
                              ],
                            ),
                          ),
                          ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, LEADS_BREAK_UP_PAGE);
                            },
                            leading: Icon(Icons.assignment_outlined,
                                color: APP_BLACK_COLOR),
                            title: Text(
                              "Leads break up",
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  maxRadius: 16,
                                  backgroundColor: PRIMARY_COLOR,
                                  child: Text("9+",
                                      style: TextStyle(color: APP_WHITE_COLOR)),
                                ),
                                SizedBox(width: LINE_HEIGHT),
                                Icon(
                                  Icons.navigate_next,
                                  color: APP_BLACK_COLOR,
                                )
                              ],
                            ),
                          ),
                          ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, PURCHASES_PAGE);
                            },
                            leading: Icon(Icons.assignment_outlined,
                                color: APP_BLACK_COLOR),
                            title: Text(
                              "Purchases",
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  maxRadius: 16,
                                  backgroundColor: PRIMARY_COLOR,
                                  child: Text("9+",
                                      style: TextStyle(color: APP_WHITE_COLOR)),
                                ),
                                SizedBox(width: LINE_HEIGHT),
                                Icon(
                                  Icons.navigate_next,
                                  color: APP_BLACK_COLOR,
                                )
                              ],
                            ),
                          ),
                          ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, CHANNEL_WISE_SOURCING_PAGE);
                            },
                            leading: Icon(Icons.assignment_outlined,
                                color: APP_BLACK_COLOR),
                            title: Text(
                              "Channel wise sourcing",
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  maxRadius: 16,
                                  backgroundColor: PRIMARY_COLOR,
                                  child: Text("9+",
                                      style: TextStyle(color: APP_WHITE_COLOR)),
                                ),
                                SizedBox(width: LINE_HEIGHT),
                                Icon(
                                  Icons.navigate_next,
                                  color: APP_BLACK_COLOR,
                                )
                              ],
                            ),
                          ),
                          ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, DOCUMENTS_PENDING_CASES_PAGE);
                            },
                            leading: Icon(Icons.assignment_outlined,
                                color: APP_BLACK_COLOR),
                            title: Text(
                              "Documents Pending Case",
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  maxRadius: 16,
                                  backgroundColor: PRIMARY_COLOR,
                                  child: Text("9+",
                                      style: TextStyle(color: APP_WHITE_COLOR)),
                                ),
                                SizedBox(width: LINE_HEIGHT),
                                Icon(
                                  Icons.navigate_next,
                                  color: APP_BLACK_COLOR,
                                )
                              ],
                            ),
                          ),
                          ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, PAYMENT_PAGE);
                            },
                            leading: Icon(Icons.assignment_outlined,
                                color: APP_BLACK_COLOR),
                            title: Text(
                              PAYMENTS,
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  maxRadius: 16,
                                  backgroundColor: PRIMARY_COLOR,
                                  child: Text("9+",
                                      style: TextStyle(color: APP_WHITE_COLOR)),
                                ),
                                SizedBox(width: LINE_HEIGHT),
                                Icon(
                                  Icons.navigate_next,
                                  color: APP_BLACK_COLOR,
                                )
                              ],
                            ),
                          ),
                          ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, REPORTS_PAGE);
                            },
                            leading: Icon(Icons.assignment_outlined,
                                color: APP_BLACK_COLOR),
                            title: Text(
                              REPORTS,
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: APP_BLACK_COLOR,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, ADD_NEW_CASE_PAGE);
                      },
                      color: PRIMARY_COLOR,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add, color: APP_WHITE_COLOR),
                          Text(
                            "New Case",
                            style:
                                AppFontStyle.regularTextStyle(APP_WHITE_COLOR),
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: APP_WHITE_COLOR,
      appBar: AppBar(
        backgroundColor: APP_WHITE_COLOR,
        elevation: 0,
        centerTitle: true,
        title: Text(
          EVALUATOR_APP,
          style: AppFontStyle.appBarTittle(PRIMARY_COLOR),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_outlined,
                color: PRIMARY_COLOR,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                  decoration: BoxDecoration(
                      color: PRIMARY_COLOR,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(12),
                          topRight: Radius.circular(12))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 8, right: 20),
                    child: Text(
                      TEAM_LEAD,
                      style: AppFontStyle.regularSmallTextStyle(APP_WHITE_COLOR,
                          textSize: 16.0),
                    ),
                  ),
                )),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: CachedNetworkImageProvider(
                        "https://www.adbasis.com/images/divita-a65623c8.jpg"),
                    maxRadius: 60,
                  ),
                  SizedBox(
                    height: LINE_HEIGHT,
                  ),
                  Text("John Lee",
                      style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR,
                          textSize: 22.0)),
                  Text(
                    "@98xxxxxx",
                    style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR),
                  ),
                  Text(
                    "Kaloor",
                    style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR),
                  ),
                  SizedBox(height: LINE_HEIGHT * 2),
                  ListTile(
                      leading: Text(
                        YOUR_TEAM,
                        style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR,
                            textSize: 20.0),
                      ),
                      trailing: PopupMenuButton<int>(
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            value: 1,
                            child: Text(HIGHEST_COMPLETED_CASES),
                          ),
                          PopupMenuDivider(),
                          PopupMenuItem(
                            value: 2,
                            child: Text(LOWEST_COMPLETED_CASES),
                          ),
                          PopupMenuDivider(),
                          PopupMenuItem(
                            value: 3,
                            child: Text(HIGHEST_PENDING_CASES),
                          ),
                          PopupMenuDivider(),
                          PopupMenuItem(
                            value: 4,
                            child: Text(LOWEST_PENDING_CASES),
                          ),
                        ],
                        icon: Icon(Icons.sort),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                        offset: Offset(0, 100),
                      )),
                  GridView.builder(
                      shrinkWrap: true,
                      itemCount: 16,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              (orientation == Orientation.portrait) ? 3 : 4),
                      itemBuilder: (BuildContext context, int index) {
                        return GridViewWidget();
                      }),
                  SizedBox(height: LINE_HEIGHT * 3),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => displayBottomSheet(context),
        backgroundColor: PRIMARY_COLOR,
        child: Icon(
          Icons.grain,
          color: APP_WHITE_COLOR,
        ),
      ),
    );
  }
}
