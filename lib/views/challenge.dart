import 'package:fitness_x/imports.dart';

class Challenge extends StackedHookView<LandingViewModel> {
  const Challenge({super.key});

  @override
  Widget builder(BuildContext context, LandingViewModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        const Text(
          "Challenge",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 100,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: model.challengeList.length,
            itemBuilder: (BuildContext context, int index) {
              var data = model.challengeList[index];
              double horMargin = index == 0 ? 0 : 12;
              return Row(
                children: [
                  if (index != 0) const SizedBox(width: 6),
                  Container(
                    width: 114.56,
                    height: 101.08,
                    padding: const EdgeInsets.all(8),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: data.bgColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 1,
                          right: 1,
                          child: Image.asset(
                            data.icon,
                            width: 60,
                            height: 60,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            data.title,
                            softWrap: true,
                            maxLines: 2,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: data.textColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (index != model.challengeList.length)
                    const SizedBox(width: 6),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
