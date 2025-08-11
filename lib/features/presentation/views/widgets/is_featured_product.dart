import 'package:e_commerce_dashboard/core/utils/app_colors.dart';
import 'package:e_commerce_dashboard/core/utils/app_text_styles.dart';
import 'package:e_commerce_dashboard/features/presentation/views/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IsFeaturedProduct extends StatefulWidget {
  const IsFeaturedProduct({super.key, required this.onChanged});

  final ValueChanged<bool> onChanged;
  
  @override
  State<IsFeaturedProduct> createState() =>
      _IsFeaturedProductState();
}

class _IsFeaturedProductState extends State<IsFeaturedProduct> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChanged: (value) {
            isTermsAccepted = value!;
            widget.onChanged(value);
            setState(() {});
          },
          acceptedConditions: isTermsAccepted,
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                  style: AppTextStyles.semiBold13.copyWith(
                    color: AppColors.obacityGrayColor ,
                  ),
                ),
                TextSpan(
                  text: 'الشروط والأحكام',
                  style: AppTextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
                const TextSpan(
                  text: ' ',
                  style: AppTextStyles.semiBold13,
                ),
                TextSpan(
                  text: 'الخاصة',
                  style: AppTextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
                const TextSpan(
                  text: ' ',
                  style: AppTextStyles.semiBold13,
                ),
                TextSpan(
                  text: 'بنا',
                  style: AppTextStyles.semiBold13
                      .copyWith(color: AppColors.lightPrimaryColor),
                ),
              ],
            ),
            textAlign: TextAlign.right,
          ),
        )
      ],
    );
  }
}