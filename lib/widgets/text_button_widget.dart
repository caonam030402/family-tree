import 'package:flutter/material.dart';

import '../styles/app_colors.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final Function()? onPressed;

  const TextButtonWidget({super.key, required this.text, this.color = AppColors.primaryColor, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
              onPressed: onPressed,
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(color),
                padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 18)),
                shape: const MaterialStatePropertyAll(
                    RoundedRectangleBorder(side: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(15)))),
              ),
              child: Text(text, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: AppColors.whiteColor))),
        ),
      ],
    );
  }
}
