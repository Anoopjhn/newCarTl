
import 'package:evalutor_app/src/blocs/authentication/authentication_cubit.dart';
import 'package:evalutor_app/src/blocs/authentication/authentication_state.dart';
import 'package:evalutor_app/src/constants/app_font_style.dart';
import 'package:evalutor_app/src/constants/colors.dart';
import 'package:evalutor_app/src/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _userName = TextEditingController();
  TextEditingController _pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthenticationCubit, AuthenticationState>(
          listener: (BuildContext context, state) {
            if (state is AuthenticationLoading) {
              CircularProgressIndicator();
            }
            if (state is AuthenticationSuccess) {
              UserModel userModel = state.userModel;
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            }
            if (state is AuthenticationError) {
              Fluttertoast.showToast(msg: "Login Failed",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.SNACKBAR,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0);
            }
          },
        )
      ],
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _userName,
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
                  controller: _pass,
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
                      BlocProvider.of<AuthenticationCubit>(context).login(_userName.text, _pass.text);
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
      ),
    );
  }
}
