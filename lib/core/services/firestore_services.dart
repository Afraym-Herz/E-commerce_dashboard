import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_dashboard/core/services/database_services.dart';

class FirestoreServices implements DatabaseServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? documentId,
  }) async {
    if (documentId != null) {
      await firestore.collection(path).doc(documentId).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  Future<Map<String, dynamic>> getData({
    required String path,
    required String userId,
  }) async {
    var user = await firestore.collection(path).doc(userId).get();
    if (!user.exists || user.data() == null) {
      throw Exception('User document not found for ID: $userId');
    }
    return user.data()!;
  }
  
  @override
  Future<bool> checkDataExists({required String path, required String userId}) {
    var data = firestore.collection(path).doc(userId).get() ;
    return data.then((value) => value.exists);
  }
}
