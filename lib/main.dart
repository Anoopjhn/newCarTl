import 'package:evalutor_app/pages/allocated_case_page.dart';
import 'package:evalutor_app/pages/completed_case_page.dart';
import 'package:evalutor_app/pages/confirmed_case_page.dart';
import 'package:evalutor_app/pages/evaluator_page.dart';
import 'package:evalutor_app/pages/home_page.dart';
import 'package:evalutor_app/pages/payment_page.dart';
import 'package:evalutor_app/pages/pending_page.dart';
import 'package:evalutor_app/pages/reports_page.dart';
import 'package:evalutor_app/pages/unallocated_case_page.dart';
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
    COMPLETED_CASE_PAGE:(context)=> CompletedCasePage(),
    ALLOCATED_CASE_PAGE:(context)=> AllocatedCasePage(),
    UNALLOCATED_CASE_PAGE:(context)=> UnAllocatedCasePage(),
    CONFIRMED_CASE_PAGE:(context)=> ConfirmedCasePage(),
    PENDING_PAGE:(context)=> PendingPage(),
    EVALUATOR_PAGE:(context)=> EvaluatorPage(),
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
        initialRoute: HOME_PAGE,
      );
  }
}
