import 'package:flutter/material.dart';
import 'package:login_and_bording_task/screen/register_screen.dart';

import '../widgets/country_picker_widget.dart';
import '../widgets/custom_button_widget.dart';
import '../widgets/custom_register_or_signin_widget.dart';
import '../widgets/custom_title_widget.dart';

class LoginScreen extends StatelessWidget {
  static const String loginStringKey = '/LoginScreen';

  const LoginScreen({Key? key}) : super(key: key);

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
                height: appSize.height / 3,
                child: Image.asset(
                  'assets/images/Lugo.jpg',
                  fit: BoxFit.fill,
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
                      title: 'Sign in',
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
                    CustomButtonWidget(
                      onPress: () {},
                      title: 'Sign in',
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
                        leadingTitle: 'Doesn\'t have any account?',
                        trailingTitle: 'Register here',
                        onPress: () {
                          Navigator.pushReplacementNamed(
                              context, RegisterScreen.loginStringKey);
                        },
                      ),
                    ),
                    Text(
                      'Use the application according to policy rules, Any',
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'kinds of violations will be subject to sanctions.',
                      style: TextStyle(color: Colors.grey),
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
