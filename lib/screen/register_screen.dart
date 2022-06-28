import 'package:flutter/material.dart';
import 'package:login_and_bording_task/screen/login_screen.dart';
import 'package:login_and_bording_task/widgets/custom_text_form_field_widget.dart';

import '../widgets/country_picker_widget.dart';
import '../widgets/custom_button_widget.dart';
import '../widgets/custom_register_or_signin_widget.dart';
import '../widgets/custom_title_widget.dart';

class RegisterScreen extends StatelessWidget {
  static const String loginStringKey = '/RegisterScreen';

  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: appSize.height / 6,
                child: Image.asset(
                  'assets/images/Lugo.jpg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Welcome to Trend Cafe',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    CustomTitleWidget(
                      title: 'Register',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Email'),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextFormFieldWidget(
                      title: 'Eg. examgle@email.com',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Phone Number'),
                    SizedBox(
                      height: 10,
                    ),
                    CountryPickerWidget(),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Password'),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextFormFieldWidget(
                      title: 'Password',
                      icon: Icon(Icons.remove_red_eye),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomButtonWidget(
                      onPress: () {},
                      title: 'Register',
                      buttonColor: Colors.blue,
                      textColor: Colors.white,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Or',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomButtonWidget(
                      title: 'Sign in with Google',
                      onPress: () {},
                      isOutline: true,
                      icon: 'assets/images/GoogleIcon.png',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: CustomRigisterOrSignInRowWidget(
                        leadingTitle: 'Have any account?',
                        trailingTitle: 'Sign in here',
                        onPress: () {
                          Navigator.pushReplacementNamed(
                              context, LoginScreen.loginStringKey);
                        },
                      ),
                    ),
                    Text(
                      'By registering your account, you agree to our',
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'terms and conditions.',
                      style: TextStyle(color: Colors.blue),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
