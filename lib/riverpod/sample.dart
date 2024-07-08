import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sample.g.dart';

/// 大文字で始まるRiverpodアノテーションを付与し、keepAliveをtrueに設することで
/// Providerが自動で破棄されなくなる
@Riverpod(keepAlive: true)
class SampleNotifier extends _$SampleNotifier {
  @override
  int build() => 0;

  void increment() {
    state = state + 1;
  }
}

void refreshProvider(WidgetRef ref) {
  /// Providerを任意のタイミングで再構築したい場合はrefreshメソッドを使用する
  ref.refresh(sampleNotifierProvider);
}
