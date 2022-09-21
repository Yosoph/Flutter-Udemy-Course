import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 10.0,
  required function,
  required String text,
}) => Container(
  width: width,
  height: 40,
  child: MaterialButton(
    onPressed: function,
    child: Text(
      isUpperCase ? text.toUpperCase() : text,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(
      radius,
    ),
    color: background,
  ),
);

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  required validate,
  required String label,
  required IconData prefix,
  IconData? suffix,
  onSubmit,
  onChanged,
  bool isPassword = false,
  suffixPressed,
}) => TextFormField(
  controller: controller,
  keyboardType: type,
  obscureText: isPassword,
  onFieldSubmitted: (String value) {
    print(value);
  },
  onChanged: (String value) {
    print(value);
  },
  validator: validate,
  decoration: InputDecoration(
    //hintText: 'Email Address',
    labelText: label,
    prefixIcon: Icon(
      prefix,
    ),
    suffixIcon: suffix != null ? IconButton(
      icon: Icon(
        suffix,
      ),
      onPressed: suffixPressed,
    ) : null,
    border: OutlineInputBorder(),
  ),
);