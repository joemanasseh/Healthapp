import 'dart:math';

import 'package:doctor_finder/models/app_notification.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationTile extends StatelessWidget {
  final List<Color> notificationColors = [
    Color.fromRGBO(81, 136, 253, 0.5),
    Color.fromRGBO(126, 81, 253, 0.5),
    Color.fromRGBO(253, 81, 81, 0.5),
  ];
  final AppNotification notification;
  NotificationTile({this.notification});
  @override
  Widget build(BuildContext context) {
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);
    ThemeUtil.initScreenUtil(context);

    return Container(
        child: ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: Container(
        height: ScreenUtil().setHeight(42.0),
        width: ScreenUtil().setWidth(40.0),
        decoration: BoxDecoration(
          color:
              notificationColors[Random().nextInt(notificationColors.length)],
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Center(
          child: Transform.rotate(
            angle: 0.5,
            child: Icon(
              FlutterIcons.ios_notifications_outline_ion,
              color: AppConstants.whiteColor,
            ),
          ),
        ),
      ),
      title: Text(
        notification.title,
        style: TextStyle(
          fontSize: AppConstants.font13,
          fontWeight: AppConstants.boldFont,
          color: ThemeUtil.lightDarkColor(
            AppConstants.deepBlue,
            Colors.white,
            dynamicTheme.data.brightness,
          ),
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Text(
          "It is a long established fact that a reader and will be distracted.",
          style: TextStyle(
            height: 1.30,
            color: ThemeUtil.lightDarkColor(
              AppConstants.lightBlackSub,
              Colors.white54,
              dynamicTheme.data.brightness,
            ),
            fontSize: AppConstants.font12,
          ),
        ),
      ),
      trailing: Text(
        timeago.format(notification.dateCreated, locale: 'en_short'),
        style: TextStyle(
          color: ThemeUtil.lightDarkColor(
            AppConstants.lightBlackSub,
            Colors.white54,
            dynamicTheme.data.brightness,
          ),
          fontSize: AppConstants.miniFontSize,
        ),
      ),
    ));
  }
}
