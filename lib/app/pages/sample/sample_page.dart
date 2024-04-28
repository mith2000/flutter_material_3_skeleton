part of 'sample_controller.dart';

class SamplePage extends GetView<SampleController> {
  const SamplePage({super.key});

  static Future<dynamic> open() async {
    return Get.toNamed(Routes.uikit);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(R.strings.homePage)),
      body: Container(),
    );
  }
}
