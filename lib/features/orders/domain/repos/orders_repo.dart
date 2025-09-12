import 'package:dartz/dartz.dart';
import 'package:e_commerce_dashboard/core/errors/failures.dart';
import 'package:e_commerce_dashboard/features/orders/domain/entities/order_entity.dart';

abstract class OrdersRepo {

  Future<Either<Failures,OrderEntity>> getOrdersWithOrder({
    required String path,
    required String userId,
    required String orderBy,
  });
  
}
