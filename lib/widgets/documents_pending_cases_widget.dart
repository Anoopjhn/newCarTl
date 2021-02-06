import 'package:evalutor_app/constants/app_font_style.dart';
import 'package:evalutor_app/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DocumentsPendingCasesWidget extends StatefulWidget {
  @override
  _DocumentsPendingCasesWidgetState createState() => _DocumentsPendingCasesWidgetState();
}

class _DocumentsPendingCasesWidgetState extends State<DocumentsPendingCasesWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: EdgeInsets.all(6),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ExpansionTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Maruti Alto", style: AppFontStyle.headingTextStyle(APP_BLACK_COLOR),),
              Text("KL - 05 - 336 ", style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
              Text("Aby Thomas", style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
              Text("Kaloor, Ernakulam", style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
            ],
          ),
          children: [
            Column(
              children: [
                SizedBox(height: 22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Text("RC Book", style: AppFontStyle.regularTextStyle(APP_BLACK_COLOR),),
                        SizedBox(width: 4,),
                        CircleAvatar(radius: 9, backgroundColor: Colors.green,child: Icon(Icons.done,color: APP_WHITE_COLOR, size: 14,),)
                      ],
                    ),
                    Row(
                      children: [
                        Text("Insurance", style: AppFontStyle.regularTextStyle(APP_BLACK_COLOR),),
                        SizedBox(width: 4,),
                        CircleAvatar(radius: 9, backgroundColor: Colors.red,child: Icon(Icons.close,color: APP_WHITE_COLOR, size: 14,),)
                      ],
                    ),
                    Row(
                      children: [
                        Text("Road Tax", style: AppFontStyle.regularTextStyle(APP_BLACK_COLOR),),
                        SizedBox(width: 4,),
                        CircleAvatar(radius: 9, backgroundColor: Colors.red,child: Icon(Icons.close,color: APP_WHITE_COLOR, size: 14,),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text("Reselling", style: AppFontStyle.regularTextStyle(APP_BLACK_COLOR),),
                        SizedBox(width: 4,),
                        CircleAvatar(radius: 9, backgroundColor: Colors.red,child: Icon(Icons.close,color: APP_WHITE_COLOR, size: 14,),)
                      ],
                    ),
                    Row(
                      children: [
                        Text("Insurance", style: AppFontStyle.regularTextStyle(APP_BLACK_COLOR),),
                        SizedBox(width: 4,),
                        CircleAvatar(radius: 9, backgroundColor: Colors.red,child: Icon(Icons.close,color: APP_WHITE_COLOR, size: 14,),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Text("Insurance", style: AppFontStyle.regularTextStyle(APP_BLACK_COLOR),),
                        SizedBox(width: 4,),
                        CircleAvatar(radius: 9, backgroundColor: Colors.red,child: Icon(Icons.close,color: APP_WHITE_COLOR, size: 14,),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 12),
              ],
            )
          ],
        ),
      ),
    );
  }
}
