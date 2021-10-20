import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/pages/available_specialists.dart';
import 'package:doctor_finder/pages/dashboard.dart';
import 'package:doctor_finder/pages/notification_screen.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/router.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Home extends StatefulWidget {
  final int selectedIndex;
  Home({this.selectedIndex});
  @override
  _HomeState createState() => _HomeState();
}

enum _SelectedTab { home, doctors, notifications, menu }

class _HomeState extends State<Home> {
  var _selectedIndex;
  bool _loading = true;
  final List _pages = [
    Dashboard(),
    AvailableSpecialist(),
    NotificationScreen(),
  ];
  var _selectedTab;

  @override
  void initState() {
    setState(() {
      _selectedIndex = this.widget.selectedIndex ?? 0;
      _selectedTab = _SelectedTab.values[_selectedIndex];
      _loading = false;
    });
    super.initState();
  }

  void _showModal() {
    showMaterialModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
      ),
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          height: 468.0,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                child: ListView(
                  shrinkWrap: true,
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: AppConstants.whiteColor,
                        child: Icon(
                          FlutterIcons.gift_ant,
                        ),
                      ),
                      onTap: () {
                        AppRouter.router.navigateTo(
                          context,
                          "appointments",
                          replace: true,
                          transition: TransitionType.fadeIn,
                        );
                      },
                      title: Text(
                        S.of(context).my_appointments,
                        style: DynamicTheme.of(context)
                            .data
                            .textTheme
                            .bodyText2
                            .copyWith(
                              fontWeight: AppConstants.boldFont,
                            ),
                      ),
                      trailing: Icon(FlutterIcons.chevron_right_fea),
                    ),
                    Divider(),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: AppConstants.whiteColor,
                        child: Icon(
                          FlutterIcons.person_mdi,
                        ),
                      ),
                      onTap: () {
                        AppRouter.router.navigateTo(
                          context,
                          "profile",
                          replace: true,
                          transition: TransitionType.fadeIn,
                        );
                      },
                      title: Text(
                        S.of(context).profile,
                        style: DynamicTheme.of(context)
                            .data
                            .textTheme
                            .bodyText2
                            .copyWith(
                              fontWeight: AppConstants.boldFont,
                            ),
                      ),
                      trailing: Icon(FlutterIcons.chevron_right_fea),
                    ),
                    Divider(),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: AppConstants.whiteColor,
                        child: Icon(
                          FlutterIcons.settings_mdi,
                        ),
                      ),
                      onTap: () {
                        AppRouter.router.navigateTo(
                          context,
                          "settings",
                          replace: true,
                          transition: TransitionType.fadeIn,
                        );
                      },
                      title: Text(
                        S.of(context).settings,
                        style: DynamicTheme.of(context)
                            .data
                            .textTheme
                            .bodyText2
                            .copyWith(
                              fontWeight: AppConstants.boldFont,
                            ),
                      ),
                      trailing: Icon(FlutterIcons.chevron_right_fea),
                    ),
                    Divider(),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: AppConstants.whiteColor,
                        child: Icon(
                          FlutterIcons.switcher_ant,
                        ),
                      ),
                      onTap: () {
                        AppRouter.router.navigateTo(
                          context,
                          "drug-home",
                          transition: TransitionType.fadeIn,
                          replace: true,
                        );
                      },
                      title: Text(
                        "${S.of(context).switch_to} PharmaStore",
                        style: DynamicTheme.of(context)
                            .data
                            .textTheme
                            .bodyText2
                            .copyWith(
                              fontWeight: AppConstants.boldFont,
                            ),
                      ),
                      trailing: Icon(FlutterIcons.chevron_right_fea),
                    ),
                    Divider(),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: AppConstants.whiteColor,
                        child: Icon(
                          FlutterIcons.payment_mdi,
                        ),
                      ),
                      onTap: () {
                        AppRouter.router.navigateTo(
                          context,
                          "payment-detail",
                          transition: TransitionType.fadeIn,
                          replace: true,
                        );
                      },
                      title: Text(
                        S.of(context).payment_detail,
                        style: DynamicTheme.of(context)
                            .data
                            .textTheme
                            .bodyText2
                            .copyWith(
                              fontWeight: AppConstants.boldFont,
                            ),
                      ),
                      trailing: Icon(FlutterIcons.chevron_right_fea),
                    ),
                    Divider(),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: AppConstants.whiteColor,
                        child: Icon(
                          FlutterIcons.log_out_fea,
                        ),
                      ),
                      onTap: () {
                        AppRouter.router.navigateTo(
                          context,
                          "/",
                          transition: TransitionType.fadeIn,
                          replace: true,
                        );
                      },
                      title: Text(
                        S.of(context).logout,
                        style: DynamicTheme.of(context)
                            .data
                            .textTheme
                            .bodyText2
                            .copyWith(
                              fontWeight: AppConstants.boldFont,
                            ),
                      ),
                      trailing: Icon(FlutterIcons.chevron_right_fea),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  void _handleIndexChanged(int i) {
    if (i <= 2) {
      setState(() {
        _selectedTab = _SelectedTab.values[i];
        _selectedIndex = i;
      });
    } else {
      _showModal();
    }
  }

  @override
  Widget build(BuildContext context) {
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);
    final S intlDelegate = S.of(context);
    ThemeUtil.initScreenUtil(context);
    print(Localizations.localeOf(context));
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text(intlDelegate.home),
            selectedColor: ThemeUtil.lightDarkColor(
              AppConstants.primaryColor,
              Colors.white,
              dynamicTheme.data.brightness,
            ),
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(FlutterIcons.stethoscope_faw),
            title: Text(intlDelegate.doctors),
            selectedColor: ThemeUtil.lightDarkColor(
              AppConstants.primaryColor,
              Colors.white,
              dynamicTheme.data.brightness,
            ),
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(FlutterIcons.md_notifications_outline_ion),
            title: Text(intlDelegate.notifications),
            selectedColor: ThemeUtil.lightDarkColor(
              AppConstants.primaryColor,
              Colors.white,
              dynamicTheme.data.brightness,
            ),
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(FlutterIcons.grid_fea),
            title: Text(intlDelegate.menu),
            selectedColor: ThemeUtil.lightDarkColor(
              AppConstants.primaryColor,
              Colors.white,
              dynamicTheme.data.brightness,
            ),
          ),
        ],
      ),
      body: _loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : _pages[_selectedIndex],
    );
  }
}
