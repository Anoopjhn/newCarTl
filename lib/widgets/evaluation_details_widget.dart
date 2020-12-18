import 'package:evalutor_app/constants/colors.dart';
import 'package:evalutor_app/constants/dimen.dart';
import 'package:flutter/material.dart';

class EvaluationDetailsWidget extends StatefulWidget {
  @override
  _EvaluationDetailsWidgetState createState() => _EvaluationDetailsWidgetState();
}

class _EvaluationDetailsWidgetState extends State<EvaluationDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Quality')),
              Flexible(
                flex: 2,
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color: PRIMARY_COLOR),),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color: PRIMARY_COLOR)),
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
                  ),
                )
              )
            ],
          ),
          SizedBox(height: LINE_HEIGHT*0.5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Expected\nprice')),
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
              Flexible(flex: 1,child: Text('Quoted  price')),
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
              Flexible(flex: 1,child: Text('Comment')),
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
              Flexible(flex: 1,child: Text('Status')),
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
              Flexible(flex: 1,child: Text('Follow Up')),
              Flexible(
                  flex: 2,
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color: PRIMARY_COLOR),),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color: PRIMARY_COLOR)),
                        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
                    ),
                  )
              )
            ],
          ),
          SizedBox(height: LINE_HEIGHT),
          CircleAvatar(
            backgroundColor: PRIMARY_COLOR,
            radius: ICON_SIZE,
            child: Icon(Icons.download_done_outlined, color: APP_WHITE_COLOR,),
          )
        ],
      ),
    );
  }
}
