import 'package:e_commerce_dashboard/features/orders/domain/entities/order_entity.dart';
import 'package:e_commerce_dashboard/features/orders/presentation/views/widgets/order_item.dart';
import 'package:flutter/material.dart';

class OrdersItemListView extends StatelessWidget {
  const OrdersItemListView({super.key, required this.orders});
  final List<OrderEntity> orders;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => OrderItem(orderEntity: orders[index]),
      itemCount: orders.length,
    );
  }
}
