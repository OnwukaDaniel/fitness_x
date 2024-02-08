import 'package:fitness_x/imports.dart';

class FastWarmUp extends StackedHookView<LandingViewModel> {
  const FastWarmUp({super.key});

  @override
  Widget builder(BuildContext context, LandingViewModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        const Text(
          "Fast Warmup",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 200,
          child: GridView.count(
            childAspectRatio: 0.4,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            crossAxisCount: 2,
            children: List.generate(
              model.fastWarmUp.length,
              (index) {
                var data = model.fastWarmUp[index];
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Container(
                        height: 72,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset(
                          data.imagePath,
                          fit: BoxFit.cover,
                          width: 72,
                          height: 72,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.title,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: AppColor.background,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Text(
                                data.time,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColor.grey,
                                ),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: AppColor.background,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Text(
                                data.level,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColor.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
