import 'package:flutter/material.dart';

class InputBox extends StatefulWidget {
  final String hintText;
  final TextInputType type;
  const InputBox(
      {super.key, required this.hintText, this.type = TextInputType.text});

  @override
  State<InputBox> createState() => _InputBoxState();
}

class _InputBoxState extends State<InputBox> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.type,
      style: const TextStyle(
        color: Color(0xFF677275),
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: Color(0xFFA4A2A2),
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none),
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }
}
