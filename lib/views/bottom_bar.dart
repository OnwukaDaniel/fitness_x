import 'package:fitness_x/imports.dart';

class BottomBar extends StackedHookView<LandingViewModel> {
  const BottomBar({super.key});

  @override
  Widget builder(BuildContext context, LandingViewModel model) {
    double width = MediaQuery.of(context).size.width;
    double viewHeight = 64;
    double screenPadding = 16;
    return Positioned(
      bottom: 1,
      width: width,
      child: Container(
        height: viewHeight,
        margin: EdgeInsets.all(screenPadding),
        decoration: BoxDecoration(
          color: AppColor.black1,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          children: List.generate(
            model.bottomBarList.length,
            (index) {
              var data = model.bottomBarList[index];
              if (model.bottomTab == index) {
                double startPad = model.bottomTab == 0 ? 16 : 8;
                double endPad =
                    model.bottomTab == model.bottomBarList.length - 1 ? 16 : 0;
                return Container(
                  height: viewHeight - 25,
                  padding: const EdgeInsets.all(8),
                  margin: EdgeInsets.only(left: startPad, right: endPad),
                  decoration: BoxDecoration(
                    color: AppColor.orange,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 12),
                      Image.asset(data.imagePath, height: 22, width: 22),
                      const SizedBox(width: 12),
                      Text(
                        data.title,
                        softWrap: true,
                        maxLines: 2,
                        style: TextStyle(fontSize: 13, color: AppColor.black1),
                      ),
                      const SizedBox(width: 12),
                    ],
                  ),
                );
              }
              return Expanded(
                child: InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () => model.setBottomTab(index),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset(
                      data.imagePath,
                      height: 16,
                      width: 16,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
