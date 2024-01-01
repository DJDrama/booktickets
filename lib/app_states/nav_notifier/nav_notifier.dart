import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'nav_notifier.g.dart';
@riverpod
class NavNotifier extends _$NavNotifier {

  @override
  int build() {
    return 0;
  }

  void onIndexChanged(int index){
    state = index;
  }
}
