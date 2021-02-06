import 'package:evalutor_app/constants/app_font_style.dart';
import 'package:evalutor_app/constants/colors.dart';
import 'package:flutter/material.dart';

class JunkLeadWidget extends StatefulWidget {
  @override
  _JunkLeadWidgetState createState() => _JunkLeadWidgetState();
}

class _JunkLeadWidgetState extends State<JunkLeadWidget> {
  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 1,
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
                Text('Mr. Aby Thomas', style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR, textSize: 18.0)),
                Text('Maruti Alto LXI,  2015', style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR)),
                Text('+91 987654321', style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundColor: PRIMARY_COLOR,
                  radius: 16,
                  child: Icon(Icons.check, color: APP_WHITE_COLOR,),
                ),
                Text('Confirm', style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
