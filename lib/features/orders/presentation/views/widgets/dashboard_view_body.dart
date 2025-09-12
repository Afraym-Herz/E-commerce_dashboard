import 'package:e_commerce_dashboard/core/widgets/custom_button.dart';
import 'package:e_commerce_dashboard/features/add_products/presentation/views/add_products_view.dart';
import 'package:e_commerce_dashboard/features/orders/presentation/manager/order_cubit/order_cubit.dart';
import 'package:e_commerce_dashboard/features/orders/presentation/views/orders_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.4,),
        CustomButton(
          onPressed: () {
            Navigator.pushNamed(context, AddProductsView.routeName);
          },
          title: 'Add Product',
        ),
        const SizedBox(height: 30),
        CustomButton(
          onPressed: () {
            Navigator.pushNamed(context, OrdersView.routeName);
          },
          title: 'Show Products',
        ),
      ],
    );
  }
}
