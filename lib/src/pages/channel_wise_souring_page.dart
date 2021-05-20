
import 'package:evalutor_app/src/constants/app_font_style.dart';
import 'package:evalutor_app/src/constants/colors.dart';
import 'package:evalutor_app/src/widgets/channel_wise_sourcing_widget.dart';

import 'package:flutter/material.dart';

class ChannelWiseSourcingPage extends StatelessWidget {
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
          'Channel wise sourcing',
          style: AppFontStyle.appBarTittle(PRIMARY_COLOR),
        ),
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 15,
                      shrinkWrap: true,
                      itemBuilder: (context, int index){
                        return ChannelWiseSourcingWidget();
                      }
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
