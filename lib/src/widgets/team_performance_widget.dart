
import 'package:evalutor_app/src/constants/app_font_style.dart';
import 'package:evalutor_app/src/constants/colors.dart';
import 'package:evalutor_app/src/constants/dimen.dart';
import 'package:evalutor_app/src/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:url_launcher/url_launcher.dart';

class TeamPerformancewidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 48,
              backgroundImage: CachedNetworkImageProvider("https://www.adbasis.com/images/divita-a65623c8.jpg"),
            ),
            Column(
              children: [
                Text('Adam Johnes', style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR,)),
                SizedBox(height: LINE_HEIGHT*0.3),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Column(
                    children: [
                      Text(CONFIRMED_CASES + ':' + ' ' + '12', style: AppFontStyle.buttonTextStyle(APP_GREY_COLOR),),
                      Text(UPDATED_CASES + ':' + ' ' + '12', style: AppFontStyle.buttonTextStyle(APP_GREY_COLOR),),
                      Text(PENDING_CASES + ':'+ ' ' + '12', style: AppFontStyle.buttonTextStyle(APP_GREY_COLOR),),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(width: LINE_HEIGHT*1.5),
            InkWell(
              onTap: _launchURL,
              child: CircleAvatar(
                backgroundColor: PRIMARY_COLOR,
                radius: 22,
                child: Icon(Icons.add_ic_call_outlined, color: APP_WHITE_COLOR,),
              ),
            )
          ],
        ),
      ),
    );
  }
  _launchURL() async {
    const url = 'tel: +918921661155';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
