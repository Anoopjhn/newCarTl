import 'package:evalutor_app/constants/app_font_style.dart';
import 'package:evalutor_app/constants/colors.dart';
import 'package:evalutor_app/constants/dimen.dart';
import 'package:flutter/material.dart';

class LeadsBreakUpWiget extends StatefulWidget {
  @override
  _LeadsBreakUpWigetState createState() => _LeadsBreakUpWigetState();
}

class _LeadsBreakUpWigetState extends State<LeadsBreakUpWiget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Assigned Cases", style: AppFontStyle.headingTextStyle(APP_BLACK_COLOR),),
            SizedBox(height: 8,),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("17 Cases", style: AppFontStyle.headingTextStyle2(PRIMARY_COLOR),),
                CircleAvatar(
                  backgroundColor: PRIMARY_COLOR,
                  radius: 16,
                  child: Icon(Icons.arrow_forward_ios_outlined, color: APP_WHITE_COLOR, size: ICON_SIZE*0.7,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
