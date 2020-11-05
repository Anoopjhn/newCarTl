import 'package:evalutor_app/constants/app_font_style.dart';
import 'package:evalutor_app/constants/colors.dart';
import 'package:flutter/material.dart';

class PaymentWidget extends StatelessWidget {
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
                Text("Aby Thomas", style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR, textSize: 18.0)),
                Text("Txn No:  124567894", style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR)),
                Text("KL-03-363", style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR)),
              ],
            ),
            Column(
              children: [
                Text('PAID', style: AppFontStyle.titleAppBarStyle2(APP_GREEN_COLOR),),
                Text('Rs: 3.5L', style: AppFontStyle.titleAppBarStyle2(APP_BLACK_COLOR),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
