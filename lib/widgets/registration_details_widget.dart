import 'package:evalutor_app/constants/app_font_style.dart';
import 'package:evalutor_app/constants/colors.dart';
import 'package:evalutor_app/constants/dimen.dart';
import 'package:flutter/material.dart';

class ResistrationDetailsWidget extends StatefulWidget {
  @override
  _ResistrationDetailsWidgetState createState() => _ResistrationDetailsWidgetState();
}

class _ResistrationDetailsWidgetState extends State<ResistrationDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Reg No:')),
              Flexible(
                flex: 2,
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color: PRIMARY_COLOR),),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color: PRIMARY_COLOR)),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: LINE_HEIGHT*0.5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Name of reg. owner:')),
              Flexible(
                flex: 2,
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color: PRIMARY_COLOR),),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color: PRIMARY_COLOR)),
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: LINE_HEIGHT*0.5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Ownership:')),
              Flexible(
                flex: 2,
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color: PRIMARY_COLOR),),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color: PRIMARY_COLOR)),
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: LINE_HEIGHT*0.5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Date of reg:')),
              Flexible(
                flex: 2,
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color: PRIMARY_COLOR),),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color: PRIMARY_COLOR)),
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: LINE_HEIGHT*0.5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Insurance:')),
              Flexible(
                flex: 2,
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color: PRIMARY_COLOR),),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color: PRIMARY_COLOR)),
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: LINE_HEIGHT*0.5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Tax:')),
              Flexible(
                flex: 2,
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color: PRIMARY_COLOR),),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color: PRIMARY_COLOR)),
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: LINE_HEIGHT*0.5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('RFCost:')),
              Flexible(
                flex: 2,
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color: PRIMARY_COLOR),),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color: PRIMARY_COLOR)),
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: LINE_HEIGHT),
          CircleAvatar(
            backgroundColor: PRIMARY_COLOR,
            radius: ICON_SIZE,
            child: Icon(Icons.arrow_forward_ios_outlined, color: APP_WHITE_COLOR,),
          )
        ],
      ),
    );
  }
}
