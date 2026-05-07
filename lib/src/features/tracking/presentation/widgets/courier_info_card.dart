import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:live_tracking_app/src/core/constants/app_icons.dart';
import 'package:live_tracking_app/src/core/constants/app_image.dart';
import 'package:live_tracking_app/src/features/shared/widgets/animated_floating_widget.dart';
import 'package:live_tracking_app/src/features/shared/widgets/custom_call_chip.dart';
import 'package:live_tracking_app/src/features/shared/widgets/custom_label.dart';
import 'package:live_tracking_app/src/features/tracking/presentation/widgets/courier_delivery_time_line.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:live_tracking_app/src/features/tracking/presentation/notifiers/tracking_notifier.dart';

class CourierInfoCard extends ConsumerWidget {
  const CourierInfoCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final deliveryInfo = ref.watch(
      trackingProvider.select((s) => s.deliveryInfo),
    );

    if (deliveryInfo == null) return const SizedBox.shrink();

    return AnimatedFloatingWidget(
      child: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(30.r),
          boxShadow: [
            BoxShadow(
              color: theme.textTheme.bodyMedium!.color!.withValues(alpha: 0.1),
              blurRadius: 8,
              spreadRadius: 4,

              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Column(
          spacing: 14.h,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16.h, left: 29.5),
              child: Row(
                spacing: 12.w,
                crossAxisAlignment: .center,
                children: [
                  SvgPicture.asset(AppIcons.clock, height: 18.r, width: 18.r),
                  Text(
                    "The package is estimated to arrive within the next\n${deliveryInfo.etaMinutes} minutes.",
                    style: theme.textTheme.titleSmall,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 19.h),
              margin: EdgeInsets.symmetric(horizontal: 12.w),
              decoration: BoxDecoration(
                color: theme.colorScheme.onSecondaryContainer.withValues(
                  alpha: 0.15,
                ),
                borderRadius: BorderRadius.circular(15.r),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 14.w,
                        children: [
                          CircleAvatar(
                            backgroundColor: theme
                                .colorScheme
                                .onSecondaryContainer
                                .withValues(alpha: 0.15),
                            radius: 25.r,
                            child: ClipOval(
                              child: Image.asset(
                                AppImage.profile,
                                frameBuilder: (context, child, frame, wasSync) {
                                  if (wasSync) return child;
                                  return AnimatedOpacity(
                                    opacity: frame == null ? 0.1 : 1,
                                    duration: const Duration(
                                      milliseconds: 1000,
                                    ),
                                    curve: Curves.bounceOut,
                                    child: child,
                                  );
                                },
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                deliveryInfo.courierName,
                                style: theme.textTheme.bodyMedium,
                              ),
                              Text("Courier", style: theme.textTheme.bodySmall),
                            ],
                          ),
                        ],
                      ),
                      CustomCallChip(text: "Call"),
                    ],
                  ),
                  SizedBox(height: 18.h),
                  // driver info and vehicle info..
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text("Order ID", style: theme.textTheme.bodySmall),
                          Text(
                            deliveryInfo.id,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),

                      CustomLabel(text: deliveryInfo.status),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  // Delivery progress timeline..
                  CourierDeliveryTimeline(),
                ],
              ),
            ),
            SizedBox(height: 5.h),
          ],
        ),
      ),
    );
  }
}
