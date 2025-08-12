import 'package:dartz/dartz.dart';
import 'package:e_commerce_dashboard/core/errors/failures.dart';
import 'package:e_commerce_dashboard/core/repos/product_repo/product_repo.dart';
import 'package:e_commerce_dashboard/features/domain/entities/add_product_input_entity.dart';

class ProductRepoImpl implements ProductRepo {
  @override
  Future<Either<Failures, void>> addProduct(AddProductInputEntity addProductInputEntity) {
    // TODO: implement addProduct
    throw UnimplementedError();
  }

}