import 'package:e_commerce_dashboard/core/helper_functions/get_order_dummy_data.dart';
import 'package:e_commerce_dashboard/features/orders/domain/entities/order_entity.dart';
import 'package:e_commerce_dashboard/features/orders/presentation/views/widgets/filter_Row.dart';
import 'package:e_commerce_dashboard/features/orders/presentation/views/widgets/order_item.dart';
import 'package:e_commerce_dashboard/features/orders/presentation/views/widgets/orders_item_list_view.dart';
import 'package:flutter/material.dart';


class OrdersViewBody extends StatelessWidget {
  const OrdersViewBody({super.key, required this.orders});

  final List<OrderEntity> orders ;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const FilterRow(),
        Expanded(child: OrdersItemListView(orders: orders)),
      ],
    );
  }
}
