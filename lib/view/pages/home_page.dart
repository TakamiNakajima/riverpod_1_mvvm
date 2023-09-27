import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_1_mvvm/view/pages/second_page.dart';
import 'package:riverpod_1_mvvm/view/simple_button_widget.dart';
import 'package:riverpod_1_mvvm/view_model/home_page_notifier.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homePageState = ref.watch(homePageProvider);
    final homePageNotifier = ref.read(homePageProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter MVVM'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SecondPage()));
            },
            icon: const Icon(Icons.abc),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: homePageNotifier.resetAllCount,
        child: const Icon(Icons.exposure_zero),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Main Count ${homePageState.mainCount}'),
                Text('Main Count ${homePageState.subCount}'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SimpleButtonWidget(
                  text: '+',
                  onPressed: () => homePageNotifier.increaseMainCount(),
                ),
                SimpleButtonWidget(
                  text: '-',
                  onPressed: () => homePageNotifier.decreaseSubCount(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
