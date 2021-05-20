
import 'package:evalutor_app/src/constants/app_font_style.dart';
import 'package:evalutor_app/src/constants/colors.dart';
import 'package:flutter/material.dart';

class UnquotedCasesWidget extends StatefulWidget {
  @override
  _UnquotedCasesWidgetState createState() => _UnquotedCasesWidgetState();
}

class _UnquotedCasesWidgetState extends State<UnquotedCasesWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Maruti Alto', style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR, textSize: 18.0)),
                Text('LXI,  2015', style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR)),
                Text('1000KMS, Petrol', style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR)),
              ],
            ),
            CircleAvatar(
              backgroundColor: PRIMARY_COLOR,
              radius: 16,
              child: Icon(Icons.keyboard_arrow_right, color: APP_WHITE_COLOR,),
            )
          ],
        ),
      ),
    );
  }
}
