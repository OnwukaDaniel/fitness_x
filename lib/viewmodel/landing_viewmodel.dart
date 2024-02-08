import 'package:fitness_x/imports.dart';

class LandingViewModel extends BaseViewModel{
  String adsImagePath = 'asset/homepage/adsImage.webp';
  List<ExerciseDataModel> bestList = [
    ExerciseDataModel(
      imagePath: 'asset/homepage/best/best1.png',
      title: 'Belle fat burner',
      time: '10 min',
      level: 'Beginner',
    ),
    ExerciseDataModel(
      imagePath: 'asset/homepage/best/best2.png',
      title: 'Lose fat',
      time: '10 min',
      level: 'Beginner',
    ),
    ExerciseDataModel(
      imagePath: 'asset/homepage/best/best3.png',
      title: 'Plank',
      time: '5 min',
      level: 'Expert',
    ),
    ExerciseDataModel(
      imagePath: 'asset/homepage/best/best4.png',
      title: 'Build Whider Biceps',
      time: '30 min',
      level: 'Intermediate',
    ),
  ];
  List<ChallengeData> challengeList = [
    ChallengeData(
      bgColor: const Color(0xFFBBF246),
      textColor: Colors.black,
      title: 'Plank Challenge',
      icon: 'asset/homepage/challenge/challenge_flame.png',
    ),
    ChallengeData(
      bgColor: const Color(0xFF192126),
      textColor: Colors.white,
      title: 'Sprint Challenge',
      icon: 'asset/homepage/challenge/challenge_run.png',
    ),
    ChallengeData(
      bgColor: const Color(0xFFFFFFFF),
      textColor: Colors.black,
      title: 'Squat Challenge',
      icon: 'asset/homepage/challenge/challenge_bottle.png',
    ),
  ];
  List<ExerciseDataModel> fastWarmUp = [
    ExerciseDataModel(
      imagePath: 'asset/homepage/best/best1.png',
      title: 'Belle fat burner',
      time: '10 min',
      level: 'Beginner',
    ),
    ExerciseDataModel(
      imagePath: 'asset/homepage/best/best2.png',
      title: 'Lose fat',
      time: '10 min',
      level: 'Beginner',
    ),
    ExerciseDataModel(
      imagePath: 'asset/homepage/best/best3.png',
      title: 'Plank',
      time: '5 min',
      level: 'Expert',
    ),
    ExerciseDataModel(
      imagePath: 'asset/homepage/best/best4.png',
      title: 'Build Whider Biceps',
      time: '30 min',
      level: 'Intermediate',
    ),
  ];
}