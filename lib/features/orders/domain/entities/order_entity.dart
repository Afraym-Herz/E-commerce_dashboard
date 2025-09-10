import 'package:e_commerce_dashboard/features/orders/data/models/order_product_model.dart';
import 'package:e_commerce_dashboard/features/orders/data/models/shipping_address_model.dart';

class OrderEntity {
  final double totalPrice;
  final String uId;
  final ShippingAddressModel shippingAddressModel;
  final List<OrderProductModel> orderProducts;
  final String paymentMethod;
  final String? status;
  final String orderID;

  OrderEntity({
    required this.totalPrice,
    required this.uId,
    required this.shippingAddressModel,
    required this.orderProducts,
    required this.paymentMethod,
    required this.status,
    required this.orderID,
  });
}
