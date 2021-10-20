import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/router.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:doctor_finder/widgets/onboarding_screen.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    ThemeUtil.initScreenUtil(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              // child: Lottie.asset('assets/anims/healthanim.json'),
              child: OnboardingScreen(),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 26.0),
            child: Column(
              children: [
                Container(
                  width: _size.width,
                  height: AppConstants.buttonHeight,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    color: AppConstants.primaryColor,
                    onPressed: () {
                      AppRouter.router.navigateTo(
                        context,
                        "register",
                        transition: TransitionType.fadeIn,
                      );
                    },
                    child: Text(
                      S.of(context).get_started.toUpperCase(),
                      style: TextStyle(
                        color: AppConstants.whiteColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
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
                        "login",
                        transition: TransitionType.fadeIn,
                      );
                    },
                    child: Text(
                      S.of(context).login.toUpperCase(),
                      style: TextStyle(
                        color: AppConstants.primaryColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
