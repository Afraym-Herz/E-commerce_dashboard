import 'dart:io';

import 'package:e_commerce_dashboard/core/widgets/custom_button.dart';
import 'package:e_commerce_dashboard/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce_dashboard/core/widgets/show_snack_bar.dart';
import 'package:e_commerce_dashboard/features/presentation/views/widgets/image_picker_container.dart';
import 'package:e_commerce_dashboard/features/presentation/views/widgets/is_featured_product.dart';
import 'package:flutter/material.dart';

class DashboardViewBody extends StatefulWidget {
  const DashboardViewBody({super.key});

  @override
  State<DashboardViewBody> createState() => _DashboardViewBodyState();
}

class _DashboardViewBodyState extends State<DashboardViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String productName, productDescription, productCode;
  late int productPrice;
  File? imageFile;
  bool isFeatured = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Product'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            autovalidateMode: autovalidateMode,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextFormField(
                  title: 'Product Name',
                  onSaved: (value) {
                    productName = value!;
                  },
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  title: 'Product Price',
                  isNum: true,
                  onSaved: (value) {
                    productPrice = int.parse(value!);
                  },
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  title: 'Product Code',
                  onSaved: (value) {
                    productCode = value!.toLowerCase();
                  },
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  title: 'Product Description',
                  maxLines: 5,
                  onSaved: (value) {
                    productDescription = value!;
                  },
                ),
                const SizedBox(height: 16),
                IsFeaturedProduct(
                  onChanged: (bool value) {
                    setState(() {
                      isFeatured = value;
                    });
                  },
                ),
                const SizedBox(height: 16),
                ImagePickerContainer(
                  onImageSelected: (value) {
                    imageFile = value;
                  },
                ),
                const SizedBox(height: 16),
                CustomButton(
                  onPressed: () {
                    if (imageFile != null) {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                      } else {
                        setState(() {
                          autovalidateMode = AutovalidateMode.always;
                        });
                      }
                    } else {
                      customSnackBar(context, message: 'must add image');
                    }
                  },
                  title: 'Add Product',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
