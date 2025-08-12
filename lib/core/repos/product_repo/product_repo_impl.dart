import 'package:dartz/dartz.dart';
import 'package:e_commerce_dashboard/core/errors/failures.dart';
import 'package:e_commerce_dashboard/core/repos/product_repo/product_repo.dart';
import 'package:e_commerce_dashboard/core/services/database_services.dart';
import 'package:e_commerce_dashboard/core/utils/backend_endpoints.dart';
import 'package:e_commerce_dashboard/features/data/models/add_product_input_model.dart';
import 'package:e_commerce_dashboard/features/domain/entities/add_product_input_entity.dart';

class ProductRepoImpl implements ProductRepo {
  final DatabaseServices databaseServices;

  ProductRepoImpl({required this.databaseServices});
  @override
  Future<Either<Failures, void>> addProduct(
    AddProductInputEntity addProductInputEntity,
  ) async {
    try {
      await databaseServices.addData(
        path: BackendEndpoints.products,
        data: AddProductInputModel.fromEntity(addProductInputEntity).toMap(),
        documentId: addProductInputEntity.productCode,
      );
      return const Right(null);
    } on Exception catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
