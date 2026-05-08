import 'dart:async';

import 'package:dartz/dartz.dart';

import 'package:live_tracking_app/src/core/utils/map_exceptions_to_failure.dart';
import 'package:live_tracking_app/src/core/utils/type_def.dart';
import 'package:live_tracking_app/src/features/tracking/data/data_sources/tracking_remote_data_source.dart';
import 'package:live_tracking_app/src/features/tracking/data/models/tracking_info_response.dart';
import 'package:live_tracking_app/src/features/tracking/domain/entities/delivery_info_entity.dart';

import 'package:live_tracking_app/src/features/tracking/domain/repositories/tracking_repository.dart';

class TrackingRepositoryImpl implements TrackingRepository {
  final TrackingRemoteDataSource _remoteDataSource;

  TrackingRepositoryImpl({required TrackingRemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;

  @override
  Stream<FailureOr<DeliveryInfoEntity>> watchRiderLocation(String deliveryId) {
    return _remoteDataSource
        .getLiveLocationStream(deliveryId)
        .map<FailureOr<DeliveryInfoEntity>>((response) {
          final entity = response.deliveryInfo.toEntity();
          return Right(entity);
        })
        .handleError((error, stackTrace) {
          return Left(mapExceptionToFailure(error));
        });
  }

  @override
  Future<FailureOr<DeliveryInfoEntity>> getDeliveryInfo(
    String deliveryId,
  ) async {
    try {
      final response = await _remoteDataSource.getDeliveryInfo(deliveryId);
      final entity = response.deliveryInfo.toEntity();
      return Right(entity);
    } catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }
}
