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
String _$greet2Hash() => r'6bb532234e3f602ca9d32e2e29bc7648efcc9ec5';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [greet2].
@ProviderFor(greet2)
const greet2Provider = Greet2Family();

/// See also [greet2].
class Greet2Family extends Family<String> {
  /// See also [greet2].
  const Greet2Family();

  /// See also [greet2].
  Greet2Provider call(
    String str,
  ) {
    return Greet2Provider(
      str,
    );
  }

  @override
  Greet2Provider getProviderOverride(
    covariant Greet2Provider provider,
  ) {
    return call(
      provider.str,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'greet2Provider';
}

/// See also [greet2].
class Greet2Provider extends AutoDisposeProvider<String> {
  /// See also [greet2].
  Greet2Provider(
    String str,
  ) : this._internal(
          (ref) => greet2(
            ref as Greet2Ref,
            str,
          ),
          from: greet2Provider,
          name: r'greet2Provider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$greet2Hash,
          dependencies: Greet2Family._dependencies,
          allTransitiveDependencies: Greet2Family._allTransitiveDependencies,
          str: str,
        );

  Greet2Provider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.str,
  }) : super.internal();

  final String str;

  @override
  Override overrideWith(
    String Function(Greet2Ref provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: Greet2Provider._internal(
        (ref) => create(ref as Greet2Ref),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        str: str,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<String> createElement() {
    return _Greet2ProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is Greet2Provider && other.str == str;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, str.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin Greet2Ref on AutoDisposeProviderRef<String> {
  /// The parameter `str` of this provider.
  String get str;
}

class _Greet2ProviderElement extends AutoDisposeProviderElement<String>
    with Greet2Ref {
  _Greet2ProviderElement(super.provider);

  @override
  String get str => (origin as Greet2Provider).str;
}

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
String _$counterNotifier2Hash() => r'57ab3b92365d69f8c0e15d97035582862d7472f6';

abstract class _$CounterNotifier2 extends BuildlessAutoDisposeNotifier<int> {
  late final int num;

  int build(
    int num,
  );
}

/// See also [CounterNotifier2].
@ProviderFor(CounterNotifier2)
const counterNotifier2Provider = CounterNotifier2Family();

/// See also [CounterNotifier2].
class CounterNotifier2Family extends Family<int> {
  /// See also [CounterNotifier2].
  const CounterNotifier2Family();

  /// See also [CounterNotifier2].
  CounterNotifier2Provider call(
    int num,
  ) {
    return CounterNotifier2Provider(
      num,
    );
  }

  @override
  CounterNotifier2Provider getProviderOverride(
    covariant CounterNotifier2Provider provider,
  ) {
    return call(
      provider.num,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'counterNotifier2Provider';
}

/// See also [CounterNotifier2].
class CounterNotifier2Provider
    extends AutoDisposeNotifierProviderImpl<CounterNotifier2, int> {
  /// See also [CounterNotifier2].
  CounterNotifier2Provider(
    int num,
  ) : this._internal(
          () => CounterNotifier2()..num = num,
          from: counterNotifier2Provider,
          name: r'counterNotifier2Provider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$counterNotifier2Hash,
          dependencies: CounterNotifier2Family._dependencies,
          allTransitiveDependencies:
              CounterNotifier2Family._allTransitiveDependencies,
          num: num,
        );

  CounterNotifier2Provider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.num,
  }) : super.internal();

  final int num;

  @override
  int runNotifierBuild(
    covariant CounterNotifier2 notifier,
  ) {
    return notifier.build(
      num,
    );
  }

  @override
  Override overrideWith(CounterNotifier2 Function() create) {
    return ProviderOverride(
      origin: this,
      override: CounterNotifier2Provider._internal(
        () => create()..num = num,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        num: num,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<CounterNotifier2, int> createElement() {
    return _CounterNotifier2ProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CounterNotifier2Provider && other.num == num;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, num.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CounterNotifier2Ref on AutoDisposeNotifierProviderRef<int> {
  /// The parameter `num` of this provider.
  int get num;
}

class _CounterNotifier2ProviderElement
    extends AutoDisposeNotifierProviderElement<CounterNotifier2, int>
    with CounterNotifier2Ref {
  _CounterNotifier2ProviderElement(super.provider);

  @override
  int get num => (origin as CounterNotifier2Provider).num;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
