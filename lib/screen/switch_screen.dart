import 'package:flutter/material.dart';
import 'package:login_and_bording_task/screen/login_screen.dart';

import 'boarding_screen.dart';

class SwitchScreen extends StatefulWidget {
  static const String loginStringKey = '/SwitchScreen';

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  final PageController _controller = PageController(initialPage: 0);
  int index = 0;
  void changeScreen() {
    index++;
    _controller.animateToPage(index,
        duration: const Duration(milliseconds: 250), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        BoardingScreen(
          imagePath: 'assets/images/1.svg',
          lines: [
            'Get Good Delivary to your',
            'doorstep asap',
            'We have a young and professional delivary',
            'team that will bring your food as soon as',
            'possible to your doorstep'
          ],
          stepImagePath: 'assets/images/step1.svg',
          skipFunction: () {
            Navigator.pushReplacementNamed(context, LoginScreen.loginStringKey);
          },
        ),
        BoardingScreen(
          imagePath: 'assets/images/2.svg',
          lines: [
            'Your delivary will deliver your',
            'order to you safely',
            'We have a young and professional delivary',
            'team that will bring your food as soon as',
            'possible to your doorstep'
          ],
          stepImagePath: 'assets/images/step2.svg',
          skipFunction: () {
            Navigator.pushReplacementNamed(context, LoginScreen.loginStringKey);
          },
        ),
        BoardingScreen(
          imagePath: 'assets/images/3.svg',
          lines: [
            'We have all dilver ways like',
            'cars and bike dilver',
            'We have a young and professional delivary',
            'team so they will',
            'reach you wherever you be'
          ],
          stepImagePath: 'assets/images/step3.svg',
          skipFunction: () {
            Navigator.pushReplacementNamed(context, LoginScreen.loginStringKey);
          },
        ),
        BoardingScreen(
          imagePath: 'assets/images/4.svg',
          lines: [
            'Our cars are made so fast and',
            'safet o give you your order',
            'We have a powerful ans speed cars',
            'Our cars will bring your food as soon as',
            'possible to your doorstep'
          ],
          stepImagePath: 'assets/images/step4.svg',
          skipFunction: () {
            Navigator.pushReplacementNamed(context, LoginScreen.loginStringKey);
          },
        ),
      ],
    );
  }
}
