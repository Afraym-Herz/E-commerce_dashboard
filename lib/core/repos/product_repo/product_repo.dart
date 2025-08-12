import 'package:dartz/dartz.dart';
import 'package:e_commerce_dashboard/core/errors/failures.dart';
import 'package:e_commerce_dashboard/features/domain/entities/add_product_input_entity.dart';

abstract class ProductRepo {
  Future<Either<Failures, void>> addProduct(
    AddProductInputEntity addProductInputEntity,
  );
}