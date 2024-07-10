import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.g.dart';

@riverpod
String greet(GreetRef ref) {
  return 'Hello, World!';
}

/// 関数ベースのProviderの場合、第二引数以降にパラメータを記述する
@riverpod
String greet2(GreetRef ref, String str) {
  return 'Hello, $str!';
}

@riverpod
Future<String> asyncGreet(AsyncGreetRef ref) async {
  await Future.delayed(const Duration(seconds: 1));
  return 'Hello, World!';
}

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<String> greet = ref.watch(asyncGreetProvider);
    return Center(
      child: greet.when(
          loading: () => const Text('Loading'),
          data: (greet) => Text(greet),
          error: (e, st) => Text(e.toString())),
    );
  }
}

// @riverpod
// class CounterNotifier extends _$CounterNotifier {
//   @override
//   int build() => 0;
//
//   void increment() {
//     state = state + 1;
//   }
// }

@riverpod
class CounterNotifier extends _$CounterNotifier {
  @override
  Future<int> build() async {
    await Future<void>.delayed(const Duration(seconds: 1));
    return 0;
  }

  void increment() async {
    final currentValue = state.valueOrNull;
    if (currentValue == null) {
      return;
    }
    state = const AsyncLoading();
    await Future<void>.delayed(const Duration(seconds: 1));
    state = AsyncValue.data(currentValue + 1);
  }
}

/// クラスベースのProviderの場合、buildメソッドの引数にパラメータを記述する
@riverpod
class CounterNotifier2 extends _$CounterNotifier2 {
  @override
  int build(int num) {
    return num;
  }

  void increment() async {
    state = state + 1;
  }
}

class Point {
  Point(this.x, this.y);

  int x;
  int y;
}

// final pointProvider = Provider<Point>((ref) {
//   return Point(0, 0);
// });

final pointProvider = StateNotifierProvider<PointNotifier, Point>((ref) {
  return PointNotifier();
});

class PointNotifier extends StateNotifier<Point> {
  PointNotifier() : super(Point(0, 0));

  void move(int x, int y) {
    state = Point(x, y);
  }
}

/// selectメソッドを使えばyの値が変化してみ値は通知されない
/// xの値のみが欲しい際に有効
int watchFieldXOfPoint(WidgetRef ref) {
  final x = ref.watch(pointProvider.select((point) => point.x));
  return x;
}

/// リファクタリング前
// @riverpod
// Future<int> fakeFirstApi(FakeFirstApiRef ref) async {
//   await Future.delayed(const Duration(seconds: 1));
//   return 1;
// }

/// リファクタリング前
// @riverpod
// Future<int> fakeSecondApi(FakeSecondApiRef ref) async {
//   await Future.delayed(const Duration(seconds: 1));
//   return 2;
// }

/// リファクタリング前
// @riverpod
// Future<int> fakeSumApi(FakeSumApiRef ref) async {
//   final AsyncValue<int> firstApiResult = ref.watch(fakeFirstApiProvider);
//   final AsyncValue<int> secondApiResult = ref.watch(fakeSecondApiProvider);
//   return firstApiResult.when(
//     loading: () => 0,
//     data: (firstApiResult) => secondApiResult.when(
//       loading: () => 0,
//       data: (secondApiResult) => firstApiResult + secondApiResult,
//       error: (e, st) => throw e,
//     ),
//     error: (e, st) => throw e,
//   );
// }

/// リファクタリング後
@riverpod
Raw<Future<int>> fakeFirstApi(FakeFirstApiRef ref) async {
  await Future.delayed(const Duration(seconds: 1));
  return 1;
}

/// リファクタリング後
@riverpod
Raw<Future<int>> fakeSecondApi(FakeSecondApiRef ref) async {
  await Future.delayed(const Duration(seconds: 1));
  return 2;
}

/// リファクタリング後
@riverpod
Raw<Future<int>> fakeSumApi(FakeSumApiRef ref) async {
  final firstApiResult = await ref.watch(fakeFirstApiProvider);
  final secondApiResult = await ref.watch(fakeSecondApiProvider);
  return firstApiResult + secondApiResult;
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     theme: ThemeData(
  //       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  //       useMaterial3: true,
  //     ),
  //     home: const MyHomePage(title: 'Flutter Demo Home Page'),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// Providerにパラメータを渡せるようにしたコードの場合、以下のように呼び出す
    /// 以下は関数ベースのProviderの場合のコード
    // final greet2 = ref.watch(greet2Provider('Riverpod'));
    final counter = ref.watch(counterNotifierProvider);

    /// 以下はクラスベースのProviderの場合
    final counterNotifier = counterNotifier2Provider(3);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${ref.watch(counterNotifier)}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterNotifier.notifier).increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
