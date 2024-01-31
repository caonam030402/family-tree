import 'package:family_tree/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpInput extends StatelessWidget {
  final TextEditingController otpController;

  const OtpInput({Key? key, required this.otpController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: TextFormField(
        controller: otpController,
        keyboardType: TextInputType.number,
        style: const TextStyle(color: AppColors.blackColor, fontSize: 28, fontWeight: FontWeight.w900),
        textAlign: TextAlign.center,
        cursorColor: Theme.of(context).colorScheme.inversePrimary,
        inputFormatters: [LengthLimitingTextInputFormatter(1), FilteringTextInputFormatter.digitsOnly],
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
        decoration: InputDecoration(
          hintText: ('0'),
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          hintStyle: TextStyle(color: Theme.of(context).iconTheme.color),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onSaved: (value) {},
      ),
    );
  }
}
