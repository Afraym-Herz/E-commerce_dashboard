import 'package:dartz/dartz.dart';
import 'package:e_commerce_dashboard/core/errors/failures.dart';
import 'package:e_commerce_dashboard/core/services/database_services.dart';
import 'package:e_commerce_dashboard/features/orders/data/models/order_model.dart';
import 'package:e_commerce_dashboard/features/orders/domain/entities/order_entity.dart';
import 'package:e_commerce_dashboard/features/orders/domain/repos/orders_repo.dart';

class OrdersRepoImpl implements OrdersRepo {
  final DatabaseServices databaseServices;

  OrdersRepoImpl({required this.databaseServices});

  @override
  Future<Either<Failures,OrderEntity>> getOrdersWithOrder({
    required String path,
    required String userId,
    required String orderBy,
  }) async {
    try {
      var json = await databaseServices.getDataWithOrder(
        path: path,
        userId: userId,
        orderBy: orderBy,
      );
      var result = OrderModel.fromJson(json).toEntity();
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
