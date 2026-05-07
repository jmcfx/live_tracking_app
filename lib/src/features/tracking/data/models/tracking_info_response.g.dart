// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracking_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TrackingInfoModel _$TrackingInfoModelFromJson(Map<String, dynamic> json) =>
    _TrackingInfoModel(
      riderLocation: RiderLocation.fromJson(
        json['riderLocation'] as Map<String, dynamic>,
      ),
      deliveryInfo: DeliveryInfo.fromJson(
        json['deliveryInfo'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$TrackingInfoModelToJson(_TrackingInfoModel instance) =>
    <String, dynamic>{
      'riderLocation': instance.riderLocation,
      'deliveryInfo': instance.deliveryInfo,
    };

_RiderLocation _$RiderLocationFromJson(Map<String, dynamic> json) =>
    _RiderLocation(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      heading: (json['heading'] as num).toDouble(),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$RiderLocationToJson(_RiderLocation instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'heading': instance.heading,
      'timestamp': instance.timestamp.toIso8601String(),
    };

_DeliveryInfo _$DeliveryInfoFromJson(Map<String, dynamic> json) =>
    _DeliveryInfo(
      id: json['id'] as String,
      courierName: json['courierName'] as String,
      courierPhone: json['courierPhone'] as String,
      courierAvatar: json['courierAvatar'] as String,
      riderLocation: RiderLocation.fromJson(
        json['riderLocation'] as Map<String, dynamic>,
      ),
      destination: LatLng.fromJson(json['destination'] as Map<String, dynamic>),
      status: json['status'] as String,
      etaMinutes: (json['etaMinutes'] as num).toInt(),
    );

Map<String, dynamic> _$DeliveryInfoToJson(_DeliveryInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'courierName': instance.courierName,
      'courierPhone': instance.courierPhone,
      'courierAvatar': instance.courierAvatar,
      'riderLocation': instance.riderLocation,
      'destination': instance.destination,
      'status': instance.status,
      'etaMinutes': instance.etaMinutes,
    };
