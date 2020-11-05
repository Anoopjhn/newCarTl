import 'package:evalutor_app/pages/conformed_case_page.dart';
import 'package:evalutor_app/pages/home_page.dart';
import 'package:evalutor_app/pages/payment_page.dart';
import 'package:evalutor_app/pages/reports_page.dart';
import 'package:evalutor_app/pages/unquoted_case_page.dart';
import 'package:flutter/material.dart';
import './constants/strings.dart';
import 'constants/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final routes = <String, WidgetBuilder>{
    HOME_PAGE: (context)=> HomePage(),
    REPORTS_PAGE: (context)=> ReportsPage(),
    PAYMENT_PAGE:(context)=> PaymentPage(),
    UNQUOTED_CASE_PAGE:(context)=> UnquotedCasePage(),
    CONFORMED_CASE_PAGE:(context)=> ConformedCasePage()
  };
  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
          backgroundColor: APP_WHITE_COLOR,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: routes,
        initialRoute: REPORTS_PAGE,
      );
  }
}
