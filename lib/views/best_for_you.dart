import 'package:fitness_x/imports.dart';

class BestForYOu extends StackedHookView<LandingViewModel> {
  const BestForYOu({super.key});

  @override
  Widget builder(BuildContext context, LandingViewModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Best for you",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),

      ],
    );
  }
}
