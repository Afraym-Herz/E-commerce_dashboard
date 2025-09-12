import 'package:e_commerce_dashboard/core/utils/backend_endpoints.dart';
import 'package:e_commerce_dashboard/features/orders/data/models/order_model.dart';
import 'package:e_commerce_dashboard/features/orders/domain/entities/order_entity.dart';
import 'package:e_commerce_dashboard/features/orders/domain/repos/orders_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit(this.ordersRepo) : super(OrdersInitial());
  final OrdersRepo ordersRepo;

  Future<void> getOrders() async {
    emit(OrdersLoading());
    var response = await ordersRepo.getOrdersWithOrder(
      path: BackendEndpoints.orders,
      userId: 'Tynzu1V9HahRgBLtxbrTxMiC8vE3',
      orderBy: 'date',
    );
    response.fold(
      (l) => emit(OrdersGetFailure(message: l.message)),
      (r) => emit(OrdersGetSuccess(orderEntity: r)),
    );
  }
}
