import 'dart:async';
import 'package:live_tracking_app/src/core/enums/view_state.dart';
import 'package:live_tracking_app/src/di/provider/provider.dart';
import 'package:live_tracking_app/src/features/tracking/domain/use_cases/get_delivery_info_use_case.dart';

import 'package:live_tracking_app/src/features/tracking/presentation/states/tracking_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tracking_notifier.g.dart';

@riverpod
class TrackingNotifier extends _$TrackingNotifier {
  StreamSubscription? _streamSubscription;

  @override
  TrackingState build() {
    ref.onDispose(() => _streamSubscription?.cancel());
    return TrackingState();
  }

  void startTracking({String deliveryId = "ORD-682834513"}) async {
    state = state.copyWith(viewState: ViewState.loading, errorMessage: null);

    final GetDeliveryInfoUseCase getInfo = ref.read(
      getDeliveryInfoUseCaseProvider,
    );

    final result = await getInfo((id: deliveryId));

    result.fold(
      (failure) {
        state = state.copyWith(
          viewState: ViewState.error,
          errorMessage: failure.message,
        );
      },
      (info) {
        state = state.copyWith(
          viewState: ViewState.success,
          deliveryInfo: info,
        );
        _listenToLocation(deliveryId);
      },
    );
  }

  void _listenToLocation(String deliveryId) {
    final watchLocation = ref.read(watchRiderLocationUseCaseProvider);

    _streamSubscription = watchLocation((deliveryId: deliveryId)).listen(
      (result) {
        result.fold(
          (failure) => state = state.copyWith(errorMessage: failure.message),
          (info) {
            state = state.copyWith(
              deliveryInfo: info,
              riderLocation: info.riderLocation,
            );
          },
        );
      },
      onError: (error) {
        state = state.copyWith(
          errorMessage: error.message.toString(),
          viewState: ViewState.error,
        );
      },
    );
  }
}
