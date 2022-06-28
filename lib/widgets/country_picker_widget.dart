import 'package:country_dial_code/country_dial_code.dart';
import 'package:flutter/material.dart';

class CountryPickerWidget extends StatelessWidget {
  const CountryPickerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
      child: Row(
        children: [
          CountryDialCodePicker(
            initialSelection: 'US',
            onChanged: (value) {
              print(value.dialCode);
            },
            showFlag: false,
          ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Eg: 559731485',
              ),
            ),
          )
        ],
      ),
    );
  }
}
