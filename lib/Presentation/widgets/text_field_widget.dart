import 'package:flutter/material.dart';

class TextFormFieldWIdget extends StatelessWidget {
  final String hintText;
  final TextEditingController controllerField;
  final bool charHide;

  const TextFormFieldWIdget({
    super.key,
    required this.hintText,
    required this.controllerField,
    this.charHide = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        obscureText: charHide,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.only(left: 28, top: 20, bottom: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          fillColor: const Color.fromARGB(220, 10, 247, 207),
          filled: true,
        ),
        controller: controllerField,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '$hintText not entered';
          } else {
            return null;
          }
        },
      ),
    );
  }
}
