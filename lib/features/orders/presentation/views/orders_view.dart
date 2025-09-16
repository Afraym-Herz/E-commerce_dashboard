import 'package:e_commerce_dashboard/core/services/get_it_services.dart';
import 'package:e_commerce_dashboard/features/orders/domain/repos/orders_repo.dart';
import 'package:e_commerce_dashboard/features/orders/presentation/manager/order_cubit/order_cubit.dart';
import 'package:e_commerce_dashboard/features/orders/presentation/views/widgets/orders_view_bloc_consumer.dart';
import 'package:e_commerce_dashboard/features/orders/presentation/views/widgets/orders_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  static const routeName = 'orders';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrderCubit(getIt.get<OrdersRepo>()),
      child: Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text('Orders')),
        body: const OrderViewBlocConsumer(),
      ),
    );
  }
}
