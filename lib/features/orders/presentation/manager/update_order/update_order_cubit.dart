import 'package:e_commerce_dashboard/core/enums/order_status_enums.dart';
import 'package:e_commerce_dashboard/features/orders/domain/repos/orders_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce_dashboard/core/errors/failures.dart';
import 'package:meta/meta.dart';

part 'update_order_state.dart';

class UpdateOrderCubit extends Cubit<UpdateOrderState> {
  UpdateOrderCubit(this.ordersRepo) : super(UpdateOrderInitial());
  final OrdersRepo ordersRepo ;

  Future<void> updateOrderStatus({
    required OrderStatusEnum status,
    required String orderId,
  }) async {
    emit(UpdateOrderLoading());
    final result = await ordersRepo.updateOrderStatus(status: status, orderId: orderId);
    result.fold(
      (l) => emit(UpdateOrderFailure(message: ServerFailure(l.message))),
      (r) => emit(UpdateOrderSuccess()),
    );
  }

}
