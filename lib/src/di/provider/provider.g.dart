// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Data Source Providers

@ProviderFor(trackingRemoteDataSource)
final trackingRemoteDataSourceProvider = TrackingRemoteDataSourceProvider._();

/// Data Source Providers

final class TrackingRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          TrackingRemoteDataSource,
          TrackingRemoteDataSource,
          TrackingRemoteDataSource
        >
    with $Provider<TrackingRemoteDataSource> {
  /// Data Source Providers
  TrackingRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'trackingRemoteDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$trackingRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<TrackingRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TrackingRemoteDataSource create(Ref ref) {
    return trackingRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TrackingRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TrackingRemoteDataSource>(value),
    );
  }
}

String _$trackingRemoteDataSourceHash() =>
    r'032f0153ab8deaaac6d491d6d08c0260ec9535a1';

/// Repository Providers

@ProviderFor(trackingRepository)
final trackingRepositoryProvider = TrackingRepositoryProvider._();

/// Repository Providers

final class TrackingRepositoryProvider
    extends
        $FunctionalProvider<
          TrackingRepository,
          TrackingRepository,
          TrackingRepository
        >
    with $Provider<TrackingRepository> {
  /// Repository Providers
  TrackingRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'trackingRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$trackingRepositoryHash();

  @$internal
  @override
  $ProviderElement<TrackingRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TrackingRepository create(Ref ref) {
    return trackingRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TrackingRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TrackingRepository>(value),
    );
  }
}

String _$trackingRepositoryHash() =>
    r'3c56cef0105a51e9f6b0ba8315c05ac3b41e9e85';

/// Use Case Providers

@ProviderFor(watchRiderLocationUseCase)
final watchRiderLocationUseCaseProvider = WatchRiderLocationUseCaseProvider._();

/// Use Case Providers

final class WatchRiderLocationUseCaseProvider
    extends
        $FunctionalProvider<
          WatchRiderLocationUseCase,
          WatchRiderLocationUseCase,
          WatchRiderLocationUseCase
        >
    with $Provider<WatchRiderLocationUseCase> {
  /// Use Case Providers
  WatchRiderLocationUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'watchRiderLocationUseCaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$watchRiderLocationUseCaseHash();

  @$internal
  @override
  $ProviderElement<WatchRiderLocationUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  WatchRiderLocationUseCase create(Ref ref) {
    return watchRiderLocationUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WatchRiderLocationUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WatchRiderLocationUseCase>(value),
    );
  }
}

String _$watchRiderLocationUseCaseHash() =>
    r'3f3e0db0586918fe49f435246c4d9b47cd04d00a';

@ProviderFor(getDeliveryInfoUseCase)
final getDeliveryInfoUseCaseProvider = GetDeliveryInfoUseCaseProvider._();

final class GetDeliveryInfoUseCaseProvider
    extends
        $FunctionalProvider<
          GetDeliveryInfoUseCase,
          GetDeliveryInfoUseCase,
          GetDeliveryInfoUseCase
        >
    with $Provider<GetDeliveryInfoUseCase> {
  GetDeliveryInfoUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getDeliveryInfoUseCaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getDeliveryInfoUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetDeliveryInfoUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetDeliveryInfoUseCase create(Ref ref) {
    return getDeliveryInfoUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetDeliveryInfoUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetDeliveryInfoUseCase>(value),
    );
  }
}

String _$getDeliveryInfoUseCaseHash() =>
    r'5c8257d84fcb5eb01d16837dd2977cb9459c2202';
