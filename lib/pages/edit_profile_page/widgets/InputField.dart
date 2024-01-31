import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String label;
  final bool required;
  final Widget child;
  const InputField(
      {super.key,
      required this.label,
      this.required = false,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Text(label,
                style: const TextStyle(
                    color: Color(0xFF464647), fontWeight: FontWeight.w600)),
            const SizedBox(width: 2),
            required
                ? const Text('*',
                    style: TextStyle(
                        color: Color(0xFFEB0F0F), fontSize: 16, height: 1.5))
                : const Text(''),
          ]),
          const SizedBox(height: 8),
          child
        ],
      ),
    );
  }
}
