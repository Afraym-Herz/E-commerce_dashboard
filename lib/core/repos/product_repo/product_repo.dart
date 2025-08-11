import 'package:e_commerce_dashboard/features/presentation/domain/entities/add_product_input_entity.dart';

abstract class ProductRepo {
  Future<void> addProduct(
    AddProductInputEntity addProductInputEntity,
  );
}