// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$greetHash() => r'd0cf58ebd5c4b6bd0259aa17bc92a27c9f6852f9';

/// See also [greet].
@ProviderFor(greet)
final greetProvider = AutoDisposeProvider<String>.internal(
  greet,
  name: r'greetProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$greetHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GreetRef = AutoDisposeProviderRef<String>;
String _$asyncGreetHash() => r'1f07e107ceddc70324218db2b20808304b9193f7';

/// See also [asyncGreet].
@ProviderFor(asyncGreet)
final asyncGreetProvider = AutoDisposeFutureProvider<String>.internal(
  asyncGreet,
  name: r'asyncGreetProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$asyncGreetHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AsyncGreetRef = AutoDisposeFutureProviderRef<String>;
String _$fakeFirstApiHash() => r'c9174144be97c1b3924982d71a1b54d47b671bdd';

/// リファクタリング前
/// リファクタリング前
/// リファクタリング前
/// リファクタリング後
///
/// Copied from [fakeFirstApi].
@ProviderFor(fakeFirstApi)
final fakeFirstApiProvider = AutoDisposeProvider<Raw<Future<int>>>.internal(
  fakeFirstApi,
  name: r'fakeFirstApiProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fakeFirstApiHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FakeFirstApiRef = AutoDisposeProviderRef<Raw<Future<int>>>;
String _$fakeSecondApiHash() => r'1ed8f98c721af0a5b5ec34ddde888ea8612a4200';

/// リファクタリング後
///
/// Copied from [fakeSecondApi].
@ProviderFor(fakeSecondApi)
final fakeSecondApiProvider = AutoDisposeProvider<Raw<Future<int>>>.internal(
  fakeSecondApi,
  name: r'fakeSecondApiProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fakeSecondApiHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FakeSecondApiRef = AutoDisposeProviderRef<Raw<Future<int>>>;
String _$fakeSumApiHash() => r'5731f05b3535c2d9737738605265206939ad2872';

/// リファクタリング後
///
/// Copied from [fakeSumApi].
@ProviderFor(fakeSumApi)
final fakeSumApiProvider = AutoDisposeProvider<Raw<Future<int>>>.internal(
  fakeSumApi,
  name: r'fakeSumApiProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fakeSumApiHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FakeSumApiRef = AutoDisposeProviderRef<Raw<Future<int>>>;
String _$counterNotifierHash() => r'afde4a95c71728ed6b2f58b986d3b8a37532c226';

/// See also [CounterNotifier].
@ProviderFor(CounterNotifier)
final counterNotifierProvider =
    AutoDisposeAsyncNotifierProvider<CounterNotifier, int>.internal(
  CounterNotifier.new,
  name: r'counterNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$counterNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CounterNotifier = AutoDisposeAsyncNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
