
import 'package:e_commerce_dashboard/core/services/fire_storage.dart';
import 'package:e_commerce_dashboard/core/services/storage_services.dart';
import 'package:get_it/get_it.dart';

  final getIt = GetIt.instance;

  void setupGetIt() {
    getIt.registerSingleton<StorageServices>(FireStorage());
    
  }
