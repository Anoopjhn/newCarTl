import 'package:evalutor_app/constants/app_font_style.dart';
import 'package:evalutor_app/constants/colors.dart';
import 'package:flutter/material.dart';

class FundTransferWidget extends StatefulWidget {
  @override
  _FundTransferWidgetState createState() => _FundTransferWidgetState();
}

class _FundTransferWidgetState extends State<FundTransferWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.15,
                width: MediaQuery.of(context).size.width*0.03,
                decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),topLeft: Radius.circular(12)),color: PRIMARY_COLOR),
              ),
              SizedBox(width: 4,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Maruti Alto', style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR, textSize: 20.0)),
                      Text('KL - 05 - 336 ', style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR)),
                      Text('Aby Thomas', style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR)),
                      Text('Kaloor, Ernakulam', style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR)),

                    ],
                  ),
                  SizedBox(width: 64,),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Transfered", style: AppFontStyle.titleAppBarStyle(PRIMARY_COLOR, textSize: 18.0)),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
