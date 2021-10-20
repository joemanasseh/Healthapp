import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/pages/past_appointments.dart';
import 'package:doctor_finder/pages/upcoming_appointments.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Appointments extends StatefulWidget {
  @override
  _AppointmentsState createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  @override
  Widget build(BuildContext context) {
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);
    final S intlDelegate = S.of(context);
    ThemeUtil.initScreenUtil(context);
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              elevation: 0.0,
              backgroundColor:
                  ThemeUtil.getCardColor(dynamicTheme.data.brightness),
              automaticallyImplyLeading: false,
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
                intlDelegate.my_appointment,
                style: dynamicTheme.data.textTheme.headline6.copyWith(
                  fontSize: AppConstants.font16,
                  color: ThemeUtil.lightDarkColor(
                    AppConstants.quietBlack,
                    Colors.white,
                    dynamicTheme.data.brightness,
                  ),
                ),
              ),
              pinned: true,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(),
              expandedHeight: ScreenUtil().setHeight(120.0),
              bottom: TabBar(
                labelColor: AppConstants.deepBlue,
                indicatorWeight: 4.0,
                unselectedLabelColor: AppConstants.inactiveColor,
                tabs: [
                  Tab(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 18.0,
                      ),
                      child: Text(
                        "Upcoming",
                        style: dynamicTheme.data.textTheme.bodyText2.copyWith(
                          fontSize: AppConstants.font15,
                          fontWeight: AppConstants.boldFont,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 18.0),
                      child: Text(
                        "Past",
                        style: dynamicTheme.data.textTheme.bodyText2.copyWith(
                          fontSize: AppConstants.font15,
                          fontWeight: AppConstants.boldFont,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                // physics: NeverScrollableScrollPhysics(),
                children: [
                  UpcomingAppointments(),
                  PastAppointments(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
