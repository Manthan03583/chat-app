import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obsecureText;
  // final String? Function(String?)? validation;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obsecureText,
    // this.validation,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        fontSize: 17,
        color: Colors.black,
      ),
      controller: controller,
      obscureText: obsecureText,
      decoration: InputDecoration(
        hintStyle: const TextStyle(
          fontSize: 17,
          color: Colors.black45,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(
            color: Colors.green.shade200,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
      ),
    );
  }
}
