import 'package:e_commerce_dashboard/features/domain/entities/review_entity.dart';

class ReviewModel {
  final String name;
  final String image;
  final num rating;
  final String date;
  final String reviewDescription;

  ReviewModel({
    required this.name,
    required this.image,
    required this.rating,
    required this.date,
    required this.reviewDescription,
  });

  factory ReviewModel.fromEntity(ReviewEntity reviewEntity) {
    return ReviewModel(
      name: reviewEntity.name ,
      image: reviewEntity.image ,
      rating: reviewEntity.rating ,
      date: reviewEntity.date ,
      reviewDescription: reviewEntity.reviewDescription ,
    );
  }

  toMap () => {
    'name': name,
    'image': image,
    'rating': rating,
    'date': date,
    'reviewDescription': reviewDescription,
  };

}
