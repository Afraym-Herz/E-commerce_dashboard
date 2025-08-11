import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:e_commerce_dashboard/core/errors/failures.dart';
import 'package:e_commerce_dashboard/core/repos/image_repo/image_repo.dart';

class ImageRepoImpl implements ImageRepo {
  @override
  Future<Either<Failures, String>> uploadImage(File image) {
    // TODO: implement uploadImage
    throw UnimplementedError();
  }

}