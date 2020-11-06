import 'package:cached_network_image/cached_network_image.dart';
import 'package:evalutor_app/constants/app_font_style.dart';
import 'package:evalutor_app/constants/colors.dart';
import 'package:evalutor_app/constants/dimen.dart';
import 'package:evalutor_app/constants/strings.dart';
import 'package:flutter/material.dart';
import 'grid_view_widget.dart';

class PendingWidget extends StatefulWidget {
  @override
  _PendingWidgetState createState() => _PendingWidgetState();
}

class _PendingWidgetState extends State<PendingWidget> {
  get orientation => null;

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.2,
                width: MediaQuery.of(context).size.width*0.03,
                decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),topLeft: Radius.circular(12)),color: PRIMARY_COLOR),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Maruti Alto', style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR, textSize: 20.0)),
                  Text('KL - 05 - 336 ', style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR)),
                  Text('Aby Thomas', style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR)),
                  Text('Kaloor, Ernakulam', style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR)),
                  Text('NOT EVALUATED', style: AppFontStyle.bodyTextStyle(PRIMARY_COLOR),),
                  SizedBox(height: LINE_HEIGHT*0.5),
                  Row(
                    children: [
                      Text('Assigned to:  '),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: CachedNetworkImageProvider("https://www.adbasis.com/images/divita-a65623c8.jpg"),
                      ),
                      Text(' Jack Daniel'),
                      IconButton(icon: Icon(Icons.edit_outlined, color: PRIMARY_COLOR,size: ICON_SIZE,), onPressed: () => displayBottomSheet(context))
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CircleAvatar(
                  backgroundColor: PRIMARY_COLOR,
                  radius: 16,
                  child: Icon(Icons.arrow_forward_ios_outlined, color: APP_WHITE_COLOR, size: ICON_SIZE*0.7,),
                ),
              )
            ],
          ),
        ],
      ),
    );;
  }
  displayBottomSheet(BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.5,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListTile(
                      leading: Text(YOUR_TEAM,
                          style: AppFontStyle.regularTextStyle2(
                              APP_BLACK_COLOR, textSize: 20.0)),
                      trailing: PopupMenuButton<int>(
                        itemBuilder: (context) =>
                        [
                          PopupMenuItem(
                            value: 1,
                            child: Text(HIGHEST_COMPLETED_CASES),
                          ),
                          PopupMenuDivider(),
                          PopupMenuItem(
                            value: 2,
                            child: Text(LOWEST_COMPLETED_CASES),
                          ),
                          PopupMenuDivider(),
                          PopupMenuItem(
                            value: 3,
                            child: Text(HIGHEST_PENDING_CASES),
                          ),
                          PopupMenuDivider(),
                          PopupMenuItem(
                            value: 4,
                            child: Text(LOWEST_PENDING_CASES),
                          ),
                        ],
                        icon: Icon(Icons.sort),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32)),
                        offset: Offset(0, 100),
                      )),
                  Expanded(
                    child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: 16,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: .8,
                            crossAxisCount: (orientation ==
                                Orientation.portrait) ? 3 : 4),
                        itemBuilder: (BuildContext context, int index) {
                          return GridViewWidget();
                        }
                    ),
                  )
                ]
            ),
          );
        }
    );
  }
}

