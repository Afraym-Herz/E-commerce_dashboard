import 'package:dartz/dartz.dart';
import 'package:e_commerce_dashboard/core/errors/failures.dart';
import 'package:e_commerce_dashboard/core/services/database_services.dart';

abstract class OrdersRepo {
  final DatabaseServices databaseServices;
  OrdersRepo({required this.databaseServices});

  Future<Either<Failures, >> ({required String userId});
}
