import 'package:fitness_x/imports.dart';

class LandingViewModel extends BaseViewModel{
  String adsImagePath = 'asset/homepage/adsImage.webp';
  List<BestForYouModel> bestList = [
    BestForYouModel(
      imagePath: 'asset/homepage/best/best1.png',
      title: 'Belle fat burner',
      time: '10 min',
      level: 'Beginner',
    ),
    BestForYouModel(
      imagePath: 'asset/homepage/best/best2.png',
      title: 'Lose fat',
      time: '10 min',
      level: 'Beginner',
    ),
    BestForYouModel(
      imagePath: 'asset/homepage/best/best3.png',
      title: 'Plank',
      time: '5 min',
      level: 'Expert',
    ),
    BestForYouModel(
      imagePath: 'asset/homepage/best/best4.png',
      title: 'Build Whider Biceps',
      time: '30 min',
      level: 'Intermediate',
    ),
  ];
}