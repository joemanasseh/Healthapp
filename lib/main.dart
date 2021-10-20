import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/router.dart';
import 'package:doctor_finder/utils/shared_prefs.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String locale = await SharedPrefs.getString("locale");
  Locale currentLocale = locale == "en"
      ? Locale("en")
      : locale == "fr"
          ? Locale("fr", "FR")
          : locale == "es"
              ? Locale("es", "ES")
              : Locale("en");
  AppRouter.setupRouter();
  runApp(MyApp(
    currentLocale: currentLocale,
  ));
}

class MyApp extends StatelessWidget {
  final Locale currentLocale;
  MyApp({this.currentLocale});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Set the fit size (fill in the screen size of the device in the design) If the design is based on the size of the iPhone6 ​​(iPhone6 ​​750*1334)
    return DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) {
        if (brightness == Brightness.light) {
          return ThemeData(
            scaffoldBackgroundColor: Color(0xFFE6EFF9),
            brightness: brightness,
            cupertinoOverrideTheme: CupertinoThemeData(
              brightness: Brightness.dark,
            ),
            textTheme: GoogleFonts.poppinsTextTheme().copyWith(
              bodyText2: TextStyle(
                color: AppConstants.greyColor,
              ),
              headline6: TextStyle(
                color: AppConstants.greyColor,
              ),
              caption: TextStyle(
                color: AppConstants.greyColor,
              ),
              subtitle1: TextStyle(
                color: AppConstants.greyColor,
              ),
            ),
          );
        }
        return new ThemeData(
          scaffoldBackgroundColor: AppConstants.darkBackground,
          brightness: brightness,
          textTheme: GoogleFonts.poppinsTextTheme().copyWith(
            bodyText2: TextStyle(
              color: AppConstants.whiteColor,
            ),
            headline6: TextStyle(
              color: AppConstants.darkSubtitle,
            ),
            headline3: TextStyle(
              color: AppConstants.whiteColor,
            ),
            caption: TextStyle(
              color: AppConstants.darkSubtitle,
            ),
            subtitle1: TextStyle(
              color: AppConstants.whiteColor,
            ),
          ),
        );
      },
      themedWidgetBuilder: (context, theme) {
        return MaterialApp(
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          localeListResolutionCallback: (locales, supportedLocales) {
            print(
                'device locales=$locales supported locales=$supportedLocales');
            for (Locale locale in supportedLocales) {
              // if device language is supported by the app,
              // just return it to set it as current app language
              if (locale == currentLocale) {
                print(locale);
              }
              if (supportedLocales.contains(locale) &&
                  locale == currentLocale) {
                print(this.currentLocale);

                return locale;
              }
            }

            return Locale('en');
          },
          supportedLocales: S.delegate.supportedLocales,
          theme: theme,
          title: 'Flutter Demo',
          onGenerateRoute: AppRouter.router.generator,
          initialRoute: AppRouter.initialRoute,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
