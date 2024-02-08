import 'package:fitness_x/imports.dart';

class AppDataRepo{
  static List<ExerciseDataModel> bestList = [
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
  static List<ChallengeData> challengeList = [
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
  static List<ExerciseDataModel> fastWarmUp = [
    ExerciseDataModel(
      imagePath: 'asset/homepage/warm_up/warm_up1.png',
      title: 'Leg exercises',
      time: '10 min',
      level: 'Beginner',
    ),
    ExerciseDataModel(
      imagePath: 'asset/homepage/best/best3.png',
      title: 'Plank',
      time: '5 min',
      level: 'Beginner',
    ),
    ExerciseDataModel(
      imagePath: 'asset/homepage/warm_up/warm_up2.png',
      title: 'Backward lunges',
      time: '5 min',
      level: 'Beginner',
    ),
    ExerciseDataModel(
      imagePath: 'asset/homepage/best/best4.png',
      title: 'Build Whider Biceps',
      time: '30 min',
      level: 'Beginner',
    ),
  ];
  static List<BottomBarDataModel> bottomBarList = [
    BottomBarDataModel(
      imagePath: 'asset/bottom_icons/home.png',
      title: 'Home',
    ),
    BottomBarDataModel(
      imagePath: 'asset/bottom_icons/explore.png',
      title: 'Explore',
    ),
    BottomBarDataModel(
      imagePath: 'asset/bottom_icons/stats.png',
      title: 'Stats',
    ),
    BottomBarDataModel(
      imagePath: 'asset/bottom_icons/profile.png',
      title: 'Profile',
    ),
  ];
}