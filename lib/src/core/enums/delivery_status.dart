import 'package:freezed_annotation/freezed_annotation.dart';

enum DeliveryStatus {
  @JsonValue('On Delivered')
  onDelivery('On Delivery'),
  @JsonValue('Delivered')
  delivered(' Delivered');

  final String label;
  const DeliveryStatus(this.label);

  bool get isOnTheWay => this == DeliveryStatus.onDelivery;
  bool get isDelivered => this == DeliveryStatus.delivered;
}
