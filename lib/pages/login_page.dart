import 'package:evalutor_app/constants/app_font_style.dart';
import 'package:evalutor_app/constants/colors.dart';
import 'package:evalutor_app/constants/strings.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please enter the Username";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelStyle: AppFontStyle.bodyTextStyle(PRIMARY_COLOR),
                  labelText: "Username",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide(color: PRIMARY_COLOR)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide(color: PRIMARY_COLOR)
                  ),

                ),
              ),
              SizedBox(
                height: 12,
              ),
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please enter the password";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelStyle: AppFontStyle.bodyTextStyle(PRIMARY_COLOR),
                  labelText: "Password",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide(color: PRIMARY_COLOR)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide(color: PRIMARY_COLOR)
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Navigator.pushNamed(context, HOME_PAGE);
                  }
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                color: PRIMARY_COLOR,
                child: Text(
                  "Login",
                  style: AppFontStyle.regularTextStyle2(APP_WHITE_COLOR),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
