import 'package:fitness_x/imports.dart';

class LandingViewModel extends BaseViewModel{
  String adsImagePath = 'asset/homepage/adsImage.webp';
  List<ExerciseDataModel> bestList = AppDataRepo.bestList;
  List<ChallengeData> challengeList = AppDataRepo.challengeList;
  List<ExerciseDataModel> fastWarmUp = AppDataRepo.fastWarmUp;
}