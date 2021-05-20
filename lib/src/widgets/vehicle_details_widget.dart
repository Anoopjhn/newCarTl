
import 'package:evalutor_app/src/constants/colors.dart';
import 'package:evalutor_app/src/constants/dimen.dart';
import 'package:flutter/material.dart';

class VehicleDetailsWidget extends StatefulWidget {
  @override
  _VehicleDetailsWidgetState createState() => _VehicleDetailsWidgetState();
}

class _VehicleDetailsWidgetState extends State<VehicleDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Model:')),
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
              Flexible(flex: 1,child: Text('Variant')),
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
              Flexible(flex: 1,child: Text('Year')),
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
              Flexible(flex: 1,child: Text('Color')),
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
              Flexible(flex: 1,child: Text('Kms.')),
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
              Flexible(flex: 1,child: Text('Fuel')),
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
              Flexible(flex: 1,child: Text('Transmission')),
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
              Flexible(flex: 1,child: Text('Emission')),
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
              Flexible(flex: 1,child: Text('Engine CC')),
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
              Flexible(flex: 1,child: Text('HP')),
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
              Flexible(flex: 1,child: Text('TV/NTV')),
              Flexible(
                flex: 2,
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color: PRIMARY_COLOR),),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color: PRIMARY_COLOR)),
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: LINE_HEIGHT),
        ],
      ),
    );
  }
}
