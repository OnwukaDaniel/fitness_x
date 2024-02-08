import 'package:fitness_x/imports.dart';

class AdsView extends StackedHookView<LandingViewModel> {
  const AdsView({super.key});

  @override
  Widget builder(BuildContext context, LandingViewModel model) {
    return Stack(
      children: [
        Container(
          height: 180,
          clipBehavior: Clip.hardEdge,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Colors.black,
                Colors.black45,
                Colors.black12,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(23),
            image: DecorationImage(
              image: AssetImage(model.adsImagePath),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Best Quarantine Workout",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    "See more",
                    style: TextStyle(
                      color: AppColor().orange,
                      fontSize: 14,
                    ),
                  ),
                  Icon(Icons.arrow_forward, color: AppColor().orange)
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
