import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:evalutor_app/constants/app_font_style.dart';
import 'package:evalutor_app/constants/colors.dart';
import 'package:evalutor_app/constants/dimen.dart';
import 'package:evalutor_app/constants/strings.dart';
import 'package:evalutor_app/widgets/payment_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {


  DateTime _selectedValue = DateTime.now();
  DatePickerController _controller = DatePickerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_WHITE_COLOR,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: PRIMARY_COLOR,
            )),
        backgroundColor: APP_WHITE_COLOR,
        elevation: 0,
        centerTitle: true,
        title: Text(
          PAYMENTS,
          style: AppFontStyle.appBarTittle(PRIMARY_COLOR),
        ),

      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                child: DatePicker(
                  DateTime.now(),
                  width: 60,
                  height: 80,
                  controller: _controller,
                  initialSelectedDate: DateTime.now(),
                  selectionColor: PRIMARY_COLOR,
                  selectedTextColor: Colors.white,
                  inactiveDates: [
                    DateTime.now().add(Duration(days: 3)),
                    DateTime.now().add(Duration(days: 4)),
                    DateTime.now().add(Duration(days: 7))
                  ],
                  onDateChange: (date) {
                    // New date selected
                    setState(() {
                      _selectedValue = date;
                    });
                  },
                ),
              ),
              SizedBox(height: LINE_HEIGHT,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: PRIMARY_COLOR,),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(32),borderSide: BorderSide(color: PRIMARY_COLOR),),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(32),borderSide: BorderSide(color: PRIMARY_COLOR)),
                    hintText: "Search by name",
                    hintStyle: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
                  ),
                ),
              ),
              SizedBox(height: LINE_HEIGHT,),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemCount: 15,
                  itemBuilder: (context, int index){
                return PaymentWidget();
              }
              )

            ],
          ),
        ),
      ),
    );
  }
}
