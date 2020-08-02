import 'package:firstApp/components/text_field_container.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    Key key, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextfieldContainer(
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          icon: Icon(Icons.lock, color: kPrimaryColor),
          suffixIcon: Icon(Icons.visibility, color: kPrimaryColor),
          border: InputBorder.none
        ),
      ),
    );
  }
}