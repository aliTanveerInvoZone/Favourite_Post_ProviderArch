import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  TextInput({
    Key? key,
    this.onSubmitted,
    this.placeholder,
    this.defaultValue,
  }) : super(key: key);

  final String? placeholder;
  final String? defaultValue;

  final Function? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: TextEditingController(text: defaultValue),
        onSubmitted: (string) {
          onSubmitted!(string);
        },
        decoration: InputDecoration(
          hintText: this.placeholder,
          labelText: ' ',
        ));
  }
}
