import 'package:fitness_x/imports.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    double screenPadding = 16;
    double bottomAppBarHeight = 64;
    return ViewModelBuilder<LandingViewModel>.nonReactive(
      viewModelBuilder: () => LandingViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: AppColor.background,
          body: SafeArea(
            child: Stack(
              children: [
                ListView(
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.all(screenPadding),
                  children: [
                    const AdsView(),
                    const BestForYOu(),
                    const Challenge(),
                    const FastWarmUp(),
                    SizedBox(height: bottomAppBarHeight),
                  ],
                ),
                const BottomBar(),
              ],
            ),
          ),
        );
      },
    );
  }
}
