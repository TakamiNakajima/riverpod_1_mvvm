import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_1_mvvm/view_model/home_page_notifier.dart';

class SecondPage extends ConsumerWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homePageState = ref.watch(homePageProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter MVVM')),
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Main Count ${homePageState.mainCount}'),
              Text('Main Count ${homePageState.subCount}'),
            ],
          ),
        ),
      ),
    );
  }
}