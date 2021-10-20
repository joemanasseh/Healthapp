import 'package:doctor_finder/models/app_notification.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:doctor_finder/widgets/notification_tile.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final String day;
  final List<AppNotification> notifications;

  NotificationCard({this.day, this.notifications});
  @override
  Widget build(BuildContext context) {
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);
    ThemeUtil.initScreenUtil(context);

    return Container(
      color: ThemeUtil.getCardColor(dynamicTheme.data.brightness),
      padding: EdgeInsets.all(24.0),
      margin: EdgeInsets.only(bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            day,
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
          SizedBox(
            height: 15.0,
          ),
          ListView.separated(
            padding: EdgeInsets.only(bottom: 0.0),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return NotificationTile(
                notification: notifications[index],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider();
            },
            itemCount: notifications.length,
          )
        ],
      ),
    );
  }
}
