import 'package:live_tracking_app/src/features/tracking/data/client/tracking_socket_client.dart';
import 'package:live_tracking_app/src/features/tracking/data/data_sources/tracking_remote_data_source.dart';
import 'package:live_tracking_app/src/features/tracking/data/repositories_impl/tracking_repository_impl.dart';
import 'package:live_tracking_app/src/features/tracking/domain/repositories/tracking_repository.dart';
import 'package:live_tracking_app/src/features/tracking/domain/use_cases/get_delivery_info_use_case.dart';
import 'package:live_tracking_app/src/features/tracking/domain/use_cases/watch_rider_location_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

/// Data Source Providers
@Riverpod(keepAlive: true)
TrackingRemoteDataSource trackingRemoteDataSource(Ref ref) {
  final socketClient = TrackingSocketClientImpl();

  ref.onDispose(() => socketClient.close());

  return TrackingRemoteDataSourceImpl(socket: socketClient);
}

/// Repository Providers
@Riverpod(keepAlive: true)
TrackingRepository trackingRepository(Ref ref) {
  final dataSource = ref.watch(trackingRemoteDataSourceProvider);
  return TrackingRepositoryImpl(remoteDataSource: dataSource);
}

/// Use Case Providers
@Riverpod(keepAlive: true)
WatchRiderLocationUseCase watchRiderLocationUseCase(Ref ref) {
  final repository = ref.watch(trackingRepositoryProvider);
  return WatchRiderLocationUseCase(repository: repository);
}

@Riverpod(keepAlive: true)
GetDeliveryInfoUseCase getDeliveryInfoUseCase(Ref ref) {
  final repository = ref.watch(trackingRepositoryProvider);
  return GetDeliveryInfoUseCase(repository: repository);
}


