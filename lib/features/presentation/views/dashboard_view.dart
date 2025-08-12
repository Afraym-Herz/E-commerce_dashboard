import 'package:e_commerce_dashboard/core/repos/image_repo/image_repo.dart';
import 'package:e_commerce_dashboard/core/repos/product_repo/product_repo.dart';
import 'package:e_commerce_dashboard/core/services/get_it_services.dart';
import 'package:e_commerce_dashboard/features/presentation/manager/cubit/add_product_cubit.dart';
import 'package:e_commerce_dashboard/features/presentation/views/widgets/dashboard_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});
  static const routeName = 'dashboard';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AddProductCubit(getIt.get<ImageRepo>(), getIt.get<ProductRepo>()),
      child:  const Scaffold(
        body: DashboardViewBodyBlocConsumer(),
      ),
    );
  }
}
