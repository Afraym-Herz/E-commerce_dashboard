import 'package:e_commerce_dashboard/core/services/get_it_services.dart';
import 'package:e_commerce_dashboard/features/orders/domain/repos/orders_repo.dart';
import 'package:e_commerce_dashboard/features/orders/presentation/manager/order_cubit/order_cubit.dart';
import 'package:e_commerce_dashboard/features/orders/presentation/views/widgets/dashboard_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>  OrderCubit(getIt.get<OrdersRepo>()),
      child: const Scaffold(body: DashboardViewBody()),
    );
  }
}
