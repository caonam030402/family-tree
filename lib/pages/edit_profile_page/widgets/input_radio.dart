import 'package:flutter/material.dart';

class InputRadio extends StatefulWidget {
  final List values;
  const InputRadio({super.key, required this.values});

  @override
  State<InputRadio> createState() => _InputRadioState();
}

class _InputRadioState extends State<InputRadio> {
  late String value = widget.values[0];

  @override
  Widget build(BuildContext context) {
    return Row(
        children: widget.values
            .map((element) => Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: Row(
                    children: [
                      Radio(
                        fillColor:
                            MaterialStateProperty.all(const Color(0xFF188A90)),
                        value: element,
                        groupValue: value,
                        onChanged: (e) {
                          setState(() {
                            value = e.toString();
                          });
                        },
                      ),
                      Text(
                        element,
                        style: const TextStyle(
                          color: Color(0xFF677275),
                          fontSize: 16,
                          letterSpacing: -0.48,
                        ),
                      )
                    ],
                  ),
                ))
            .toList());
  }
}
