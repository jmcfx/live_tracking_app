import 'package:freezed_annotation/freezed_annotation.dart';

enum DeliveryStatus {
  @JsonValue('On Delivered')
  onDelivered('On Delivered'),
  @JsonValue('Delivered')
  delivered(' Delivered');

  final String label;
  const DeliveryStatus(this.label);

  bool get isOnTheWay => this == DeliveryStatus.onDelivered;
  bool get isDelivered => this == DeliveryStatus.delivered;
}
