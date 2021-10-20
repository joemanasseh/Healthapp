import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/models/app_notification.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:doctor_finder/widgets/notification_card.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<AppNotification> _notifications = [
    AppNotification(
      title: "Remind For Serial",
      subtitle:
          "It is a long established fact that a reader and will be distracted.",
      dateCreated: DateTime(2020, 9, 10),
    ),
    AppNotification(
      title: "Notification From Dr. Istiak",
      subtitle:
          "It is a long established fact that a reader and will be distracted.",
      dateCreated: DateTime(2020, 9, 10),
    ),
    AppNotification(
      title: "Notification From Dr. Shofik",
      subtitle:
          "It is a long established fact that a reader and will be distracted.",
      dateCreated: DateTime(2020, 9, 10),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);
    final S intlDelegate = S.of(context);
    ThemeUtil.initScreenUtil(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: ThemeUtil.getCardColor(dynamicTheme.data.brightness),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            FlutterIcons.keyboard_backspace_mdi,
            color: ThemeUtil.lightDarkColor(
              AppConstants.quietBlack,
              Colors.white,
              dynamicTheme.data.brightness,
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          intlDelegate.notifications,
          style: dynamicTheme.data.textTheme.headline6.copyWith(
            color: ThemeUtil.lightDarkColor(
              AppConstants.quietBlack,
              Colors.white,
              dynamicTheme.data.brightness,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: ["Today", "Yesterday", "28 December 2020"]
                .map(
                  (day) => Container(
                    margin: EdgeInsets.only(bottom: 3.0),
                    child: NotificationCard(
                      day: day,
                      notifications: _notifications,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
