
import 'package:flutter/material.dart';
import 'package:saeed_fyp/components/text_field_container.dart';
import 'package:saeed_fyp/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _email, _password;

    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return TextFieldContainer(
      child: TextFormField(
        validator: (input) {
          if (input.isEmpty) {
            return "Enter email";
          }
        },
        onSaved: (input) => _email = input,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
