import 'package:flutter/material.dart';
import '../Consts/colors.dart';

class CustomTextField extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final String? image;
  final bool? obscureText;


  const CustomTextField({
    Key? key,
    this.controller,
    this.inputType,
    this.hintText,
    this.obscureText = false,
    this.image,
    this.labelText,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            widget.labelText!,
            style: const TextStyle(
              fontSize: 14,
              color: ConstColors.textColor,
              fontFamily: 'Cairo',
            ),
          ),
        ),
        SizedBox(
          height: 54,
          child: TextFormField(
            onFieldSubmitted: (v) {
              FocusScope.of(context).nextFocus();
            },
            textAlign: TextAlign.left,
            textDirection: TextDirection.rtl,
            autofocus: false,
            autocorrect: true,
            maxLines: 1,
            obscureText: widget.obscureText!,
            textInputAction: TextInputAction.next,
            style: const TextStyle(fontSize: 16),
            keyboardType: widget.inputType,
            controller: widget.controller,
            cursorColor: ConstColors.primaryColor,
            decoration: InputDecoration(
              suffixIcon: widget.image! == ""
                  ? const SizedBox()
                  : widget.labelText != ""
                  ? Padding(
                padding: const EdgeInsets.all(14.0),
              )
                  : const SizedBox(),
              fillColor: const Color(0xffFBFBFB),
              filled: true,
              contentPadding: const EdgeInsets.only(left: 10, top: 16, bottom: 16, right: 10),
              isDense: true,
              hintText: widget.hintText,
              hintStyle: const TextStyle(
                fontSize: 16,
                color: ConstColors.text2Color,
                fontFamily: 'Cairo',
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  width: 1,
                  color: Color(0xffF3F2F2),
                ),
              ),
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  width: 1,
                  color: Color(0xffF3F2F2),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  width: 1,
                  color: ConstColors.primaryColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
