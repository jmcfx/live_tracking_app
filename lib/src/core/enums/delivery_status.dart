/// Represents the current status of a delivery.
enum DeliveryStatus {
  pickedUp,
  onDelivery,
  delivered;

  /// Human-readable display name for the UI.
  String get displayName {
    switch (this) {
      case DeliveryStatus.pickedUp:
        return 'Picked Up';
      case DeliveryStatus.onDelivery:
        return 'On Delivery';
      case DeliveryStatus.delivered:
        return 'Delivered';
    }
  }
}
