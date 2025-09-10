import 'package:e_commerce_dashboard/features/orders/data/models/order_product_model.dart';
import 'package:e_commerce_dashboard/features/orders/data/models/shipping_address_model.dart';
import 'package:e_commerce_dashboard/features/orders/domain/entities/order_entity.dart';

class OrderModel {
  final double totalPrice;
  final String uId;
  final ShippingAddressModel shippingAddressModel;
  final List<OrderProductModel> orderProducts;
  final String paymentMethod;
  final String? status;
  final String orderID;

  OrderModel({
    required this.totalPrice,
    required this.uId,
    required this.shippingAddressModel,
    required this.orderProducts,
    required this.paymentMethod,
    required this.status,
    required this.orderID,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
    totalPrice: json['totalPrice'].toDouble(),
    uId: json['uId'],
    shippingAddressModel: ShippingAddressModel.fromJson(
      json['shippingAddressModel'],
    ),
    orderProducts: List<OrderProductModel>.from(
      json['orderProducts'].map((e) => OrderProductModel.fromJson(e)),
    ),
    paymentMethod: json['paymentMethod'],
    status: json['status'],
    orderID: json['orderID'],
  );

  OrderEntity toEntity () => OrderEntity(
    totalPrice: totalPrice,
    uId: uId,
    shippingAddressModel: shippingAddressModel.toEntity(),
    orderProducts: orderProducts.map((e) => e.toEntity()).toList(),
    paymentMethod: paymentMethod,
    status: status,
    orderID: orderID,
  );

  toJson() => {
    'totalPrice': totalPrice,
    'uId': uId,
    'shippingAddressModel': shippingAddressModel.toJson(),
    'orderProducts': orderProducts.map((e) => e.toJson()).toList(),
    'paymentMethod': paymentMethod,
    'status': status,
    'orderID': orderID,
  };
}
