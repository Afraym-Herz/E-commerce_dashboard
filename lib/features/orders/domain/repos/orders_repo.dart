import 'package:dartz/dartz.dart';
import 'package:e_commerce_dashboard/core/enums/order_status_enums.dart';
import 'package:e_commerce_dashboard/core/errors/failures.dart';
import 'package:e_commerce_dashboard/features/orders/domain/entities/order_entity.dart';

abstract class OrdersRepo {
  Stream<Either<Failures, List<OrderEntity>>> getOrdersWithOrder();

  Future<Either<Failures, void>> updateOrderStatus({
    required OrderStatusEnum status,
    required String orderId,
  });
}
