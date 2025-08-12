
import 'package:e_commerce_dashboard/core/repos/image_repo/image_repo.dart';
import 'package:e_commerce_dashboard/core/repos/image_repo/image_repo_impl.dart';
import 'package:e_commerce_dashboard/core/repos/product_repo/product_repo.dart';
import 'package:e_commerce_dashboard/core/repos/product_repo/product_repo_impl.dart';
import 'package:e_commerce_dashboard/core/services/database_services.dart';
import 'package:e_commerce_dashboard/core/services/fire_storage.dart';
import 'package:e_commerce_dashboard/core/services/firestore_services.dart';
import 'package:e_commerce_dashboard/core/services/storage_services.dart';
import 'package:get_it/get_it.dart';

  final getIt = GetIt.instance;

  void setupGetIt() {
    
    getIt.registerSingleton<StorageServices>(FireStorage());
    getIt.registerSingleton<ImageRepo>(ImageRepoImpl(storageServices: getIt.get<StorageServices>())) ;
    getIt.registerSingleton<DatabaseServices>(FirestoreServices()); 
    getIt.registerSingleton<ProductRepo>(ProductRepoImpl(databaseServices: getIt.get<DatabaseServices>()));
    
  }
