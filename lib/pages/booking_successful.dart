import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/router.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/animation/animation_preferences.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in_down.dart';
import 'package:flutter_icons/flutter_icons.dart';

class BookingSuccessful extends StatefulWidget {
  @override
  _BookingSuccessfulState createState() => _BookingSuccessfulState();
}

class _BookingSuccessfulState extends State<BookingSuccessful> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final S intlDelegate = S.of(context);
    ThemeUtil.initScreenUtil(context);

    return WillPopScope(
      onWillPop: () async {
        AppRouter.router.navigateTo(
          context,
          "drug-home",
          transition: TransitionType.fadeIn,
          replace: true,
          clearStack: true,
        );
        return false;
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // FlatButton(
            //   child: Text("Change TO French"),
            //   onPressed: () {
            //     setState(() {
            //       S.load(Locale("fr", "FR"));
            //     });
            //   },
            // ),
            // FlatButton(
            //   child: Text("Change TO Spanish"),
            //   onPressed: () {
            //     setState(() {
            //       S.load(Locale("es", "ES"));
            //     });
            //   },
            // ),
            // FlatButton(
            //   child: Text("Change TO English"),
            //   onPressed: () {
            //     setState(() {
            //       S.load(Locale("en"));
            //     });
            //   },
            // ),
            Spacer(),
            FadeInDown(
              preferences: AnimationPreferences(
                offset: Duration(milliseconds: 600),
                duration: Duration(
                  seconds: 1,
                ),
              ),
              child: Stack(
                children: [
                  Icon(
                    FlutterIcons.checkbox_blank_circle_mco,
                    size: 54.0,
                    color: Colors.green,
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Icon(
                      FlutterIcons.check_fea,
                      size: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            FadeInDown(
              preferences: AnimationPreferences(
                offset: Duration(milliseconds: 600),
                duration: Duration(
                  seconds: 1,
                ),
              ),
              child: Text(
                intlDelegate.booking_successful,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: AppConstants.font16,
                  color: AppConstants.whiteColor,
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            FadeInDown(
              preferences: AnimationPreferences(
                offset: Duration(milliseconds: 600),
                duration: Duration(
                  seconds: 1,
                ),
              ),
              child: Text(
                intlDelegate.booking_successful_subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.5,
                  fontSize: AppConstants.font14,
                  color: Colors.white60,
                ),
              ),
            ),
            Spacer(),
            Container(
              width: _size.width,
              height: AppConstants.buttonHeight,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                  side: BorderSide(
                    color: AppConstants.primaryColor,
                  ),
                ),
                color: AppConstants.whiteColor,
                onPressed: () {
                  AppRouter.router.navigateTo(
                    context,
                    "appointments",
                    transition: TransitionType.fadeIn,
                    replace: true,
                  );
                },
                child: Text(
                  intlDelegate.browse_appointments,
                  style: TextStyle(
                    color: AppConstants.primaryColor,
                    fontSize: AppConstants.font13,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            )
          ],
        ),
      ),
    );
  }
}
