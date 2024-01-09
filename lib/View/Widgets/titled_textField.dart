import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Utils/app_colors.dart';

class TitledTextField extends StatelessWidget {
  TitledTextField({
    Key? key,
    required this.title,
    this.suffixIcon,
    this.perfix,
    this.controller,
    this.onPress,
    this.onChange,
    this.keyboardType,
    this.obscureText = false,
    this.enabled = true,
  }) : super(key: key);
  final String title;
  final TextEditingController? controller;
  Widget? suffixIcon;
  Widget? perfix;
  Function()? onPress;
  Function(String)? onChange;
  TextInputType? keyboardType;
  bool obscureText;
  bool enabled;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(height: 8),
        TextFormField(
          enabled: enabled,
          keyboardType: keyboardType,
          obscureText: obscureText,
          onTap: onPress,
          controller: controller,
          onChanged:onChange ,
          decoration: InputDecoration(
              filled: true,
              fillColor: enabled==false?AppColors.RED_COLOR.withOpacity(0.1):AppColors.GREY_SHADE_COLOR,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
              suffixIcon: suffixIcon,
              prefix: perfix),
        )
      ],
    );
  }
}
