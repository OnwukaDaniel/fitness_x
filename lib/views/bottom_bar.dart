import 'package:fitness_x/imports.dart';

class BottomBar extends StackedHookView<LandingViewModel> {
  const BottomBar({super.key});

  @override
  Widget builder(BuildContext context, LandingViewModel model) {
    double width = MediaQuery.of(context).size.width;
    double screenPadding = 16;
    return Positioned(
      bottom: 1,
      width: width,
      child: Container(
        height: 64,
        margin: EdgeInsets.all(screenPadding),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppColor.black1,
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );
  }
}
