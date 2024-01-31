import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../styles/app_colors.dart';
import '../styles/app_texts.dart';

class InputWidget extends StatefulWidget {
  final bool isIcon;
  final bool isPassword;
  final TextEditingController textEditingController;
  final String? hintText;
  final String? icon;

  const InputWidget({super.key, required this.isIcon, this.isPassword = false, required this.textEditingController, this.hintText, this.icon});

  @override
  State<InputWidget> createState() => _InputWidgetState(isPassword);
}

class _InputWidgetState extends State<InputWidget> {
  bool isHide;
  FocusNode _focusNode = FocusNode();
  Color _color = Colors.grey;
  TextStyle _style = TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.blackColor);

  _InputWidgetState(this.isHide);

  @override
  void initState() {
    super.initState();

    _focusNode.addListener(() {
      setState(() {
        _color = _focusNode.hasFocus ? Color(0xffE7AA32) : AppColors.blackColor;
        _style = _focusNode.hasFocus
            ? TextStyle(fontSize: 16, color: _color, fontWeight: FontWeight.w600)
            : TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.blackColor);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        border: Border.all(width: 1, color: AppColors.lightGreyColor),
        color: AppColors.whiteColor,
      ),
      child: Row(
        children: [
          if (widget.isIcon)
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                border: BorderDirectional(end: BorderSide(width: 1, color: AppColors.lightGreyColor)),
              ),
              child: SvgPicture.asset(
                widget.icon!,
                width: 18,
                color: _color,
              ),
            ),
          Expanded(
            child: Stack(
              children: [
                TextField(
                  controller: widget.textEditingController,
                  style: _style,
                  focusNode: _focusNode,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                    hintText: widget.hintText,
                    hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.greyColor),
                  ),
                  obscureText: isHide,
                ),
                if (widget.isPassword)
                  Positioned(
                    top: 14,
                    right: 10,
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            isHide = !isHide;
                          });
                        },
                        child: FaIcon(
                          isHide ? FontAwesomeIcons.solidEye : FontAwesomeIcons.solidEyeSlash,
                          color: AppColors.greyColor,
                          size: 20,
                        )),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
