part of 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(R.strings.homePage)),
      body: Center(
        child: ElevatedButton(
          onPressed: () => UIKitPage.open(),
          child: Text(R.strings.uiKitMaterial3),
        ),
      ),
    );
  }
}
