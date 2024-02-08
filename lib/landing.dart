import 'package:fitness_x/imports.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double screenPadding = 16;
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
                  children: const [
                    AdsView(),
                    BestForYOu(),
                    Challenge(),
                    FastWarmUp(),
                    SizedBox(height: 64),
                  ],
                ),
                Positioned(
                  bottom: 1,
                  width: width,
                  child: Container(
                    height: 64,
                    margin: EdgeInsets.all(screenPadding),
                    decoration: BoxDecoration(
                      color: AppColor.black1,
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
