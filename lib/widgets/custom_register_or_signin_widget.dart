import 'package:flutter/material.dart';

class CustomRigisterOrSignInRowWidget extends StatelessWidget {
  final String leadingTitle, trailingTitle;
  final Function onPress;
  Color? trailingTitleColor;
  late bool isBold;
  CustomRigisterOrSignInRowWidget({
    Key? key,
    required this.leadingTitle,
    required this.trailingTitle,
    required this.onPress,
    this.trailingTitleColor,
    this.isBold = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          leadingTitle,
          style: TextStyle(
            fontWeight: isBold ? FontWeight.bold : null,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () {
            onPress();
          },
          child: Text(
            trailingTitle,
            style: TextStyle(
              color:
                  trailingTitleColor != null ? trailingTitleColor : Colors.blue,
              fontWeight: isBold ? FontWeight.bold : null,
            ),
          ),
        )
      ],
    );
  }
}
