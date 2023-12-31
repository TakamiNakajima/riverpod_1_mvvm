import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_1_mvvm/model/home_page_state.dart';

class HomePageNotifier extends StateNotifier<HomePageState> {
  // 初期値の指定
  HomePageNotifier() : super(const HomePageState());

  // メインカウントを+1する
  void increaseMainCount() async {
    state = state.copyWith(mainCount: state.mainCount + 1);
  }

  // サブカウントを-1する
  void decreaseSubCount() async {
    state = state.copyWith(subCount: state.subCount - 1);
  }

  // すべてのカウントを0に戻す
  void resetAllCount() async {
    state = state.copyWith(
      mainCount: 0,
      subCount: 0,
    );
  }
}

// HomePageNotifierの状態を管理する
final homePageProvider =
StateNotifierProvider.autoDispose<HomePageNotifier, HomePageState>(
      (ref) => HomePageNotifier(),
);