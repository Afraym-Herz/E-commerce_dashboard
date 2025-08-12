import 'dart:io';

import 'package:e_commerce_dashboard/core/widgets/custom_button.dart';
import 'package:e_commerce_dashboard/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce_dashboard/core/widgets/show_snack_bar.dart';
import 'package:e_commerce_dashboard/features/domain/entities/add_product_input_entity.dart';
import 'package:e_commerce_dashboard/features/presentation/manager/cubit/add_product_cubit.dart';
import 'package:e_commerce_dashboard/features/presentation/views/widgets/image_picker_container.dart';
import 'package:e_commerce_dashboard/features/presentation/views/widgets/is_featured_product.dart';
import 'package:e_commerce_dashboard/features/presentation/views/widgets/is_organic_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  late int expiryMonths;
  late bool isOrganic;
  late int numOfCalories;
  late num unitAmount;

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
                  title: 'Expiry Months',
                  isNum: true,
                  onSaved: (value) {
                    expiryMonths = int.parse(value!);
                  },
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  title: 'Num of Calories',
                  isNum: true,
                  onSaved: (value) {
                    numOfCalories = int.parse(value!);
                  },
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  title: 'Unit Amount',
                  isNum: true,
                  onSaved: (value) {
                    unitAmount = int.parse(value!);
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
                    isFeatured = value;
                  },
                ),
                const SizedBox(height: 16),
                IsOrganicProduct(
                  onChanged: (bool value) {
                    isOrganic = value;
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
                        context.read<AddProductCubit>().addProduct(
                          addProductInputEntity: AddProductInputEntity(
                            productCode: productCode,
                            productDescription: productDescription,
                            productImage: imageFile!,
                            productName: productName,
                            productPrice: productPrice,
                            isFeatured: isFeatured,
                            expiryMonths: expiryMonths,
                            numOfCalories: numOfCalories,
                            unitAmount: unitAmount,
                            isOrganic: isOrganic,
                          ),
                        );
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
