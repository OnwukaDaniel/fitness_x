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
        ),
        Container(
          height: 180,
          clipBehavior: Clip.hardEdge,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Colors.black54,
                Colors.black54,
                Colors.black38,
                Colors.black12,
                Colors.transparent,
                Colors.transparent,
                Colors.transparent,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(23),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Best Quarantine Workout",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(flex: 1, child: SizedBox()),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "See more",
                    style: TextStyle(
                      color: AppColor.orange,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: AppColor.orange,
                    size: 12,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
