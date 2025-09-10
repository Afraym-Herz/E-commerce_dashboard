import 'package:e_commerce_dashboard/features/add_products/presentation/views/add_products_view.dart';
import 'package:e_commerce_dashboard/features/orders/presentation/views/orders_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    

    case AddProductsView.routeName:
      return MaterialPageRoute(builder: (context) => const AddProductsView());   
   
    case OrdersView.routeName:
      return MaterialPageRoute(builder: (context) => const OrdersView());

    default:
      return MaterialPageRoute(builder: (context) => const Placeholder());
  }
}