import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormFieldWidget extends StatelessWidget {
  final String title;
  Icon? icon;
  CustomTextFormFieldWidget({Key? key, required this.title, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: title,
          suffixIcon: icon,
        ),
      ),
    );
  }
}
