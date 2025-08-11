import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:e_commerce_dashboard/core/errors/failures.dart';

abstract class ImageRepo {
  Future<Either<Failures, String>> uploadImage(File image);
}