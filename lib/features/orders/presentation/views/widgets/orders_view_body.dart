import 'package:e_commerce_dashboard/core/helper_functions/get_order_dummy_data.dart';
import 'package:e_commerce_dashboard/features/orders/presentation/views/widgets/filter_Row.dart';
import 'package:e_commerce_dashboard/features/orders/presentation/views/widgets/order_item.dart';
import 'package:flutter/material.dart';


class OrdersViewBody extends StatelessWidget {
  const OrdersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      
      children: [
        const FilterRow(),
        OrderItem(orderEntity: getDummyOrder()),
      ],
    );
  }
}
