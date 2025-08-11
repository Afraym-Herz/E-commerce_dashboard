
import 'package:e_commerce_dashboard/core/utils/app_colors.dart';
import 'package:e_commerce_dashboard/core/utils/app_text_styles.dart';
import 'package:e_commerce_dashboard/features/presentation/views/widgets/build_outline_input_border.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.title , this.isPhoneNum = false, this.onSaved});
  final String title;
  final bool isPhoneNum;
  final void Function(String?)? onSaved ;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'يجب ادخال $title';
        }
        return null;
      },
      onSaved: onSaved,
      keyboardType: isPhoneNum ? TextInputType.phone : TextInputType.text,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffF9FAFA),
        contentPadding: const EdgeInsets.all(22) ,
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder().copyWith(borderSide: const BorderSide(color: Colors.green , width: 1)),
        labelText: title ,
        labelStyle: AppTextStyles.bold13.copyWith(color:  AppColors.obacityGrayColor ),
      ),
    );
  } 
}