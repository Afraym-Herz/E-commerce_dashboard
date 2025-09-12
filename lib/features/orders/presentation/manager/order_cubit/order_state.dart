part of 'order_cubit.dart';

@immutable
sealed class OrderState {}

final class OrdersInitial extends OrderState {}

final class OrdersLoading extends OrderState {}

final class OrdersGetSuccess extends OrderState {
  final OrderEntity orderEntity;
  OrdersGetSuccess({required this.orderEntity});
}

final class OrdersGetFailure extends OrderState {
  final String message;
  OrdersGetFailure( {required this.message});
}