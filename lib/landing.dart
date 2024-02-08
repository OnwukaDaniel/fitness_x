import 'package:fitness_x/imports.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LandingViewModel>.nonReactive(
      viewModelBuilder: () => LandingViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: AppColor.background,
          body: SafeArea(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(16),
              children: const [
                AdsView(),
                BestForYOu(),
              ],
            ),
          ),
        );
      },
    );
  }
}
