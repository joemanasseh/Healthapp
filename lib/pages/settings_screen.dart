import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/shared_prefs.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:doctor_finder/utils/router.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  final List<Color> notificationColors = [
    Color.fromRGBO(81, 136, 253, 0.5),
    Color.fromRGBO(126, 81, 253, 0.5),
    Color.fromRGBO(253, 81, 81, 0.5),
  ];

  bool isDarkMode;
  Locale _currentLocale;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 0), () {
      setState(() {
        isDarkMode =
            DynamicTheme.of(context).data.brightness == Brightness.dark;
      });
    });
    loadCurrentLocale();
    super.initState();
  }

  void loadCurrentLocale() async {
    String _locale = await SharedPrefs.getString("locale");
    setState(() {
      if (_locale == "en") {
        _currentLocale = Locale("en");
      } else if (_locale == "fr") {
        _currentLocale = Locale("fr", "FR");
      } else if (_locale == "es") {
        _currentLocale = Locale("es", "ES");
      } else {
        _currentLocale = Locale("en");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);
    final S intlDelegate = S.of(context);
    ThemeUtil.initScreenUtil(context);
    // isDarkMode = DynamicTheme.of(context).data.brightness == Brightness.dark;

    return WillPopScope(
      onWillPop: () async {
        Navigator.popUntil(context, (route) {
          if (route.settings.name == "home" ||
              route.settings.name == "drug-home") {
            AppRouter.router.navigateTo(
              context,
              route.settings.name,
              transition: TransitionType.fadeIn,
              replace: true,
            );
            return true;
          }
          return false;
        });

        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          automaticallyImplyLeading: false,
          backgroundColor: ThemeUtil.getCardColor(dynamicTheme.data.brightness),
          leading: IconButton(
            onPressed: () {
              Navigator.popUntil(context, (route) {
                if (route.settings.name == "home" ||
                    route.settings.name == "drug-home") {
                  AppRouter.router.navigateTo(
                    context,
                    route.settings.name,
                    transition: TransitionType.fadeIn,
                    replace: true,
                  );
                  return true;
                }
                return false;
              });
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
            intlDelegate.settings,
            style: dynamicTheme.data.textTheme.headline6.copyWith(
              fontSize: AppConstants.font16,
              color: ThemeUtil.lightDarkColor(
                AppConstants.quietBlack,
                Colors.white,
                dynamicTheme.data.brightness,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: ThemeUtil.getCardColor(dynamicTheme.data.brightness),
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                margin: EdgeInsets.only(
                  top: 15.0,
                ),
                child: Column(
                  children: [
                    ListView(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.only(bottom: 0),
                      shrinkWrap: true,
                      children: [
                        ListTile(
                          leading: Container(
                            height: ScreenUtil().setHeight(42.0),
                            width: ScreenUtil().setWidth(40.0),
                            decoration: BoxDecoration(
                              color: notificationColors[1],
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Center(
                              child: Icon(
                                FlutterIcons.ios_notifications_outline_ion,
                                color: AppConstants.whiteColor,
                              ),
                            ),
                          ),
                          title: Text(
                            intlDelegate.notifications,
                            style: TextStyle(
                              fontSize: AppConstants.font13,
                              color: ThemeUtil.lightDarkColor(
                                AppConstants.deepBlue,
                                Colors.white,
                                dynamicTheme.data.brightness,
                              ),
                            ),
                          ),
                          trailing: Container(
                              child: FlutterSwitch(
                            width: ScreenUtil().setWidth(43.0),
                            height: ScreenUtil().setHeight(25.0),
                            valueFontSize: 25.0,
                            value: false,
                            borderRadius: 30.0,
                            padding: 4.0,
                            activeColor: AppConstants.primaryColor,
                            onToggle: (val) {
                              setState(() {});
                            },
                          )),
                        ),
                        Divider(),
                        ListTile(
                          leading: Container(
                            height: ScreenUtil().setHeight(42.0),
                            width: ScreenUtil().setWidth(40.0),
                            decoration: BoxDecoration(
                              color: notificationColors[2],
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Center(
                              child: Icon(
                                FlutterIcons.brightness_medium_mdi,
                                color: AppConstants.whiteColor,
                              ),
                            ),
                          ),
                          title: Text(
                            intlDelegate.dark_mode,
                            style: TextStyle(
                              fontSize: AppConstants.font13,
                              color: ThemeUtil.lightDarkColor(
                                AppConstants.deepBlue,
                                Colors.white,
                                dynamicTheme.data.brightness,
                              ),
                            ),
                          ),
                          trailing: Container(
                              child: FlutterSwitch(
                            width: ScreenUtil().setWidth(43.0),
                            height: ScreenUtil().setHeight(25.0),
                            valueFontSize: 25.0,
                            value: isDarkMode ?? false,
                            borderRadius: 30.0,
                            padding: 4.0,
                            activeColor: AppConstants.primaryColor,
                            onToggle: (val) {
                              DynamicTheme.of(context).setBrightness(
                                isDarkMode ? Brightness.light : Brightness.dark,
                              );
                              setState(() {
                                isDarkMode =
                                    DynamicTheme.of(context).brightness ==
                                        Brightness.dark;
                              });
                            },
                          )),
                        ),
                        Divider(),
                        ListTile(
                          leading: Container(
                            height: ScreenUtil().setHeight(42.0),
                            width: ScreenUtil().setWidth(40.0),
                            decoration: BoxDecoration(
                              color: notificationColors[0],
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Center(
                              child: Icon(
                                FlutterIcons.phone_incoming_mco,
                                color: AppConstants.whiteColor,
                              ),
                            ),
                          ),
                          title: Text(
                            intlDelegate.call_option,
                            style: TextStyle(
                              fontSize: AppConstants.font13,
                              color: ThemeUtil.lightDarkColor(
                                AppConstants.deepBlue,
                                Colors.white,
                                dynamicTheme.data.brightness,
                              ),
                            ),
                          ),
                          trailing: Container(
                              child: FlutterSwitch(
                            width: ScreenUtil().setWidth(43.0),
                            height: ScreenUtil().setHeight(25.0),
                            valueFontSize: 25.0,
                            value: false,
                            borderRadius: 30.0,
                            padding: 4.0,
                            activeColor: AppConstants.primaryColor,
                            onToggle: (val) {
                              setState(() {});
                            },
                          )),
                        ),
                        Divider(),
                        ListTile(
                          leading: Container(
                            height: ScreenUtil().setHeight(42.0),
                            width: ScreenUtil().setWidth(40.0),
                            decoration: BoxDecoration(
                              color: notificationColors[1],
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Center(
                              child: Icon(
                                FlutterIcons.video_call_mdi,
                                color: AppConstants.whiteColor,
                              ),
                            ),
                          ),
                          title: Text(
                            intlDelegate.video_option,
                            style: TextStyle(
                              fontSize: AppConstants.font13,
                              color: ThemeUtil.lightDarkColor(
                                AppConstants.deepBlue,
                                Colors.white,
                                dynamicTheme.data.brightness,
                              ),
                            ),
                          ),
                          trailing: Container(
                              child: FlutterSwitch(
                            width: ScreenUtil().setWidth(43.0),
                            height: ScreenUtil().setHeight(25.0),
                            valueFontSize: 25.0,
                            value: false,
                            borderRadius: 30.0,
                            padding: 4.0,
                            activeColor: AppConstants.primaryColor,
                            onToggle: (val) {
                              setState(() {});
                            },
                          )),
                        ),
                        Divider(),
                        ListTile(
                          leading: Container(
                            height: ScreenUtil().setHeight(42.0),
                            width: ScreenUtil().setWidth(40.0),
                            decoration: BoxDecoration(
                              color: notificationColors[0],
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Center(
                              child: Icon(
                                FlutterIcons.ios_person_ion,
                                color: AppConstants.whiteColor,
                              ),
                            ),
                          ),
                          title: Text(
                            intlDelegate.privacy_options,
                            style: TextStyle(
                              fontSize: AppConstants.font13,
                              color: ThemeUtil.lightDarkColor(
                                AppConstants.deepBlue,
                                Colors.white,
                                dynamicTheme.data.brightness,
                              ),
                            ),
                          ),
                          trailing: Container(
                            child: IconButton(
                              icon: Icon(FlutterIcons.chevron_right_fea),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Divider(),
                        ListTile(
                          onTap: () {
                            print("damn");
                            showLanguageModal(context);
                          },
                          leading: Container(
                            height: ScreenUtil().setHeight(42.0),
                            width: ScreenUtil().setWidth(40.0),
                            decoration: BoxDecoration(
                              color: notificationColors[0],
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Center(
                              child: Icon(
                                FlutterIcons.language_faw,
                                color: AppConstants.whiteColor,
                              ),
                            ),
                          ),
                          title: Text(
                            "${intlDelegate.language} (${_currentLocale == null ? "EN" : _currentLocale.languageCode.toUpperCase()})",
                            style: TextStyle(
                              fontSize: AppConstants.font13,
                              color: ThemeUtil.lightDarkColor(
                                AppConstants.deepBlue,
                                Colors.white,
                                dynamicTheme.data.brightness,
                              ),
                            ),
                          ),
                          trailing: Container(
                            child: IconButton(
                              icon: Icon(FlutterIcons.chevron_right_fea),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text("${intlDelegate.version} 1.0.0")
            ],
          ),
        ),
      ),
    );
  }

  void showLanguageModal(BuildContext context) {
    print(isDarkMode);
    Function globalSetter = setState;
    showGeneralDialog(
      context: context,
      pageBuilder: (BuildContext buildContext, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Wrap(
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: <Widget>[
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 250.0,
                    decoration: BoxDecoration(
                      color: ThemeUtil.getCardColor(
                        DynamicTheme.of(context).data.brightness,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Material(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 15.0,
                            ),
                            child: RadioListTile(
                              title: Text("English"),
                              onChanged: (val) {
                                setState(() {
                                  S.load(Locale("en"));
                                  _currentLocale = Locale("en");
                                });
                                globalSetter(() {});
                                SharedPrefs.setString("locale", "en");

                                Navigator.of(context).pop();
                              },
                              value: Locale("en"),
                              groupValue: _currentLocale,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 15.0,
                            ),
                            child: RadioListTile(
                              title: Text("Francais"),
                              value: Locale("fr", "FR"),
                              groupValue: _currentLocale,
                              onChanged: (val) {
                                setState(() {
                                  S.load(Locale("fr", "FR"));
                                  _currentLocale = Locale("fr", "FR");
                                });
                                globalSetter(() {});
                                SharedPrefs.setString("locale", "fr");
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 15.0,
                            ),
                            child: RadioListTile(
                              title: Text("Espanyol"),
                              onChanged: (val) {
                                setState(() {
                                  S.load(Locale("es", "ES"));
                                  _currentLocale = Locale("es", "ES");
                                });
                                globalSetter(() {});
                                SharedPrefs.setString("locale", "es");
                                Navigator.of(context).pop();
                              },
                              value: Locale("es", "ES"),
                              groupValue: _currentLocale,
                              // value: _currentLocale == Locale("es", "ES"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Color.fromRGBO(0, 0, 0, 0.54),
      transitionDuration: const Duration(milliseconds: 200),
    );
  }
}
