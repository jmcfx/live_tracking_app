import 'package:freezed_annotation/freezed_annotation.dart';

enum DeliveryStatus {
  @JsonValue('On the way')
  onTheWay('On the way'),
  @JsonValue('Delivered')
  delivered('Delivered');

  final String label;
  const DeliveryStatus(this.label);

  bool get isOnTheWay => this == DeliveryStatus.onTheWay;
  bool get isDelivered => this == DeliveryStatus.delivered;
}
