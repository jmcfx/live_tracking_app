import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:live_tracking_app/src/core/constants/app_icons.dart';
import 'package:timelines_plus/timelines_plus.dart';

class CourierDeliveryTimeline extends StatelessWidget {
  const CourierDeliveryTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Timeline.tileBuilder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      theme: TimelineThemeData(nodePosition: 0, indicatorPosition: 0.15),
      builder: TimelineTileBuilder.connected(
        itemCount: 2,
        connectorBuilder: (_, index, _) {
          return DashedLineConnector(
            color: theme.colorScheme.primary,
            thickness: 1,
            gap: 2,
            dash: 2,
            indent: 2,
          );
        },

        indicatorBuilder: (_, index) {
          if (index == 0) {
            return Container(
              padding: EdgeInsets.all(1.5).r,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: theme.colorScheme.onPrimaryFixedVariant,
                  width: 1.2.w,
                ),
              ),
              child: Container(
                height: 16.h,
                width: 16.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.colorScheme.onPrimaryFixedVariant,
                ),
              ),
            );
          }
          return SvgPicture.asset(
            AppIcons.mapPin,
             height: 22.h,
             width: 22.w,
            fit: BoxFit.cover,
            alignment: AlignmentGeometry.center,
          );
        },

        contentsBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.only(left: 12.w, bottom: 30.h),
              child: Row(
                spacing: 4.h,
                mainAxisAlignment: .spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: .center,
                    crossAxisAlignment: .start,
                    children: [
                      Text("On Delivery", style: theme.textTheme.bodySmall),
                      Text(
                        "Courier is delivering the package",
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontSize: 12.sp,
                        ),
                      ),
                      Text(
                        "25 minutes destination",
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: .center,
                    crossAxisAlignment: .start,
                    children: [
                      Text("10:47 AM", style: theme.textTheme.bodySmall),
                      Text(
                        "18 Jan, 2026",
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
          return Padding(
            padding: EdgeInsets.only(left: 12.w),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: .center,
                  crossAxisAlignment: .start,
                  children: [
                    Text("Delivered", style: theme.textTheme.bodySmall),
                    Text(
                      "Akobo, Ibadan",
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),

                Column(children: []),
              ],
            ),
          );
        },
      ),
    );
  }
}
