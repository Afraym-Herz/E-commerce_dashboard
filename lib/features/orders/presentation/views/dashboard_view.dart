import 'package:e_commerce_dashboard/features/orders/presentation/views/widgets/dashboard_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: DashboardViewBody());
  }
}
