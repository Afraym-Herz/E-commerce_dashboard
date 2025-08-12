import 'package:e_commerce_dashboard/core/helper_functions/on_generate_routes.dart';
import 'package:e_commerce_dashboard/core/services/get_it_services.dart';
import 'package:e_commerce_dashboard/features/presentation/views/dashboard_view.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(const ECommerceDashboard());
}

class ECommerceDashboard extends StatelessWidget {
  const ECommerceDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: DashboardView.routeName,
      onGenerateRoute: onGenerateRoutes,
    );
  }
}
