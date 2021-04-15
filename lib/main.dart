import 'package:evalutor_app/pages/add_new_case_page.dart';
import 'package:evalutor_app/pages/allocated_case_page.dart';
import 'package:evalutor_app/pages/channel_wise_souring_page.dart';
import 'package:evalutor_app/pages/deal_ok_cases_page.dart';
import 'package:evalutor_app/pages/documents_pending_cases_page.dart';
import 'package:evalutor_app/pages/fund_transfer_page.dart';
import 'package:evalutor_app/pages/junk_leads_page.dart';
import 'package:evalutor_app/pages/leads_break_up_page.dart';
import 'package:evalutor_app/pages/login_page.dart';
import 'package:evalutor_app/pages/purchases_page.dart';
import 'package:evalutor_app/pages/unquoted_cases_page.dart';
import 'package:evalutor_app/pages/evaluator_page.dart';
import 'package:evalutor_app/pages/home_page.dart';
import 'package:evalutor_app/pages/payment_page.dart';
import 'package:evalutor_app/pages/pending_page.dart';
import 'package:evalutor_app/pages/reports_page.dart';
import 'package:evalutor_app/pages/unallocated_case_page.dart';
import 'package:evalutor_app/provider/form_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
    FUND_TRANSFER_PAGE :(context)=> FundTransferPage(),
    UNQUOTED_CASE_PAGE:(context)=> UnquotedCasesPage(),
    DEAL_OK_CASES_PAGE:(context)=> DealOkCasesPage(),
    ALLOCATED_CASE_PAGE:(context)=> AllocatedCasePage(),
    UNALLOCATED_CASE_PAGE:(context)=> UnAllocatedCasePage(),
    JUNK_LEAD_PAGE :(context)=> JunkLeadsPage(),
    LEADS_BREAK_UP_PAGE :(context)=> LeadsBreakUpPage(),
    PURCHASES_PAGE :(context)=>PurchasesPage(),
    CHANNEL_WISE_SOURCING_PAGE :(context)=> ChannelWiseSourcingPage(),
    DOCUMENTS_PENDING_CASES_PAGE :(context)=> DocumentsPendingCasesPage(),
    LOGIN_PAGE :(context)=> LoginPage(),

    PENDING_PAGE:(context)=> PendingPage(),
    EVALUATOR_PAGE:(context)=> EvaluatorPage(),
    ADD_NEW_CASE_PAGE:(context)=> AddNewCasePage()
  };
  
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider<FormData>(create: (_)=>FormData()),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.red,
            backgroundColor: APP_WHITE_COLOR,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          routes: routes,
          initialRoute: LOGIN_PAGE,
        ),
    );
  }
}
