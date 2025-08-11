import 'package:e_commerce_dashboard/core/helper_functions/on_generate_routes.dart';
import 'package:e_commerce_dashboard/features/presentation/views/dashboard_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ECommerceDashboard());
}

class ECommerceDashboard extends StatelessWidget {
  const ECommerceDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: DashboardView.routeName,
      onGenerateRoute: onGenerateRoutes,
    );
  }
}
