import 'package:fitness_x/imports.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LandingViewModel>.nonReactive(
      viewModelBuilder: () => LandingViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          body: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(16),
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
