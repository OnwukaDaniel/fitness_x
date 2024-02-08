import 'package:fitness_x/imports.dart';

class LandingViewModel extends BaseViewModel{
  String adsImagePath = 'asset/homepage/adsImage.webp';
  List<ExerciseDataModel> bestList = AppDataRepo.bestList;
  List<ChallengeData> challengeList = AppDataRepo.challengeList;
  List<ExerciseDataModel> fastWarmUp = AppDataRepo.fastWarmUp;
  List<BottomBarDataModel> bottomBarList = AppDataRepo.bottomBarList;

  int _bottomTab = 0;
  int get bottomTab=> _bottomTab;

  setBottomTab(int input){
    _bottomTab = input;
    notifyListeners();
  }
}