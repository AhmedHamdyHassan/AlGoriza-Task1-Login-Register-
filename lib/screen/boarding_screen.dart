import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_and_bording_task/screen/register_screen.dart';

import '../widgets/custom_register_or_signin_widget.dart';

class BoardingScreen extends StatelessWidget {
  final String imagePath, stepImagePath;
  final List<String> lines;
  final Function skipFunction;
  const BoardingScreen({
    Key? key,
    required this.imagePath,
    required this.lines,
    required this.stepImagePath,
    required this.skipFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Spacer(),
                  CustomRoundedElevatedButtonWidget(
                    buttonColor: Color(0xffF1E9DE),
                    onPress: () {
                      skipFunction();
                    },
                    title: 'Skip',
                  ),
                  SizedBox(
                    width: 5,
                  )
                ],
              ),
              Row(
                children: [
                  Spacer(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 10,
                    child: Image.asset(
                      'assets/images/Lugo.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: SvgPicture.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                lines[0],
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Text(
                lines[1],
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                lines[2],
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                lines[3],
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                lines[4],
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              SvgPicture.asset(stepImagePath),
              SizedBox(
                height: 20,
              ),
              CustomRoundedElevatedButtonWidget(
                title: 'Get Started',
                onPress: () {
                  skipFunction();
                },
                buttonColor: Color(0xff51AFAB),
                buttonHeight: 50,
                radius: 5,
                textColor: Colors.white,
              ),
              SizedBox(
                height: 15,
              ),
              CustomRigisterOrSignInRowWidget(
                leadingTitle: 'Don\'t have any account?',
                trailingTitle: 'Sign up',
                onPress: () {
                  Navigator.pushReplacementNamed(
                      context, RegisterScreen.loginStringKey);
                },
                trailingTitleColor: Color(0xff51AFAB),
                isBold: true,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRoundedElevatedButtonWidget extends StatelessWidget {
  final String title;
  late Color textColor, buttonColor;
  late double radius;
  double? buttonHeight;
  final Function onPress;
  CustomRoundedElevatedButtonWidget({
    Key? key,
    required this.title,
    this.textColor = Colors.black,
    this.radius = 18.0,
    this.buttonColor = Colors.blue,
    required this.onPress,
    this.buttonHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPress();
      },
      child: Text(
        title,
        style: TextStyle(
          color: textColor,
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        primary: buttonColor,
        elevation: 0,
        fixedSize: buttonHeight != null
            ? Size(
                double.infinity,
                buttonHeight!,
              )
            : null,
      ),
    );
  }
}
