import 'package:e_commerce_dashboard/core/helper_functions/on_generate_routes.dart';
import 'package:e_commerce_dashboard/core/services/get_it_services.dart';
import 'package:e_commerce_dashboard/core/services/supabase_storage.dart';
import 'package:e_commerce_dashboard/features/presentation/views/dashboard_view.dart';
import 'package:e_commerce_dashboard/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); 
   SupabaseStorage.initSupabase();
   await SupabaseStorage.createSupabaseBucket( bucketName: 'fruits_images');
  
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
