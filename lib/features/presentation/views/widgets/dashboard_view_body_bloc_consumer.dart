import 'package:e_commerce_dashboard/features/presentation/manager/cubit/add_product_cubit.dart';
import 'package:e_commerce_dashboard/features/presentation/views/widgets/custom_progress_hud.dart';
import 'package:e_commerce_dashboard/features/presentation/views/widgets/dashboard_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardViewBodyBlocConsumer extends StatelessWidget {
  const DashboardViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductCubit, AddProductState>(
      listener: (context, state) {
        if (state is AddProductSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Product Added Successfully!')),
          );
        }
        if (state is AddProductFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          isLoading: state is AddProductLoading,
          child: const DashboardViewBody(),
        );
      },
    );
  }
}
