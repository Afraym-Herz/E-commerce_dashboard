import 'dart:io';

import 'package:e_commerce_dashboard/core/services/storage_services.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as b ;


class FireStorage implements StorageServices {
    
  final storageRef = FirebaseStorage.instance.ref();
 
  @override
  Future<String> uploadFile({required String path, required File file}) async {
    String fileName = b.basename(file.path);
    String extenstion = b.extension(fileName);

    var fileRef = storageRef.child('$path/$fileName.$extenstion');
    await fileRef.putFile(file);

    return await fileRef.getDownloadURL(); 
  }

}