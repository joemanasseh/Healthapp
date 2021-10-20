import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:doctor_finder/utils/router.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/svg.dart';

class SearchDoctor extends StatefulWidget {
  @override
  _SearchDoctorState createState() => _SearchDoctorState();
}

class _SearchDoctorState extends State<SearchDoctor> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);
    final S intlDelegate = S.of(context);
    ThemeUtil.initScreenUtil(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: ThemeUtil.getCardColor(dynamicTheme.data.brightness),
        leading: IconButton(
          onPressed: () {
            AppRouter.router.navigateTo(
              context,
              "home",
              transition: TransitionType.fadeIn,
              replace: true,
            );
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
          intlDelegate.search_here,
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
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 20.0,
              left: 16.0,
              right: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: intlDelegate.search_your,
                        style: dynamicTheme.data.textTheme.headline6.copyWith(
                          fontSize: AppConstants.font18,
                        ),
                      ),
                      TextSpan(
                        text: "\n${intlDelegate.specialists}",
                        style: dynamicTheme.data.textTheme.headline3.copyWith(
                          fontSize: AppConstants.font22,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                          color: ThemeUtil.lightDarkColor(
                            AppConstants.deepBlue,
                            Colors.white,
                            dynamicTheme.data.brightness,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: UnconstrainedBox(
                            child: SvgPicture.asset(
                              "assets/svg/place_search.svg",
                              width: 19.0,
                              height: 19.0,
                              color: dynamicTheme.data.iconTheme.color,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 17.0,
                            horizontal: 20.0,
                          ),
                          border: OutlineInputBorder(),
                          labelText: "Select Area",
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                        ),
                      ),
                      SizedBox(height: 25.0),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 17.0,
                            horizontal: 20.0,
                          ),
                          suffixIcon: Icon(
                            FlutterIcons.stethoscope_faw,
                            size: 19.0,
                          ),
                          border: OutlineInputBorder(),
                          labelText: intlDelegate.doctor_specialist,
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                        ),
                      ),
                      SizedBox(height: 25.0),
                      TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            FlutterIcons.event_mdi,
                            size: 19.0,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 17.0,
                            horizontal: 20.0,
                          ),
                          border: OutlineInputBorder(),
                          labelText: intlDelegate.select_date,
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                        ),
                      ),
                      SizedBox(height: 40.0),
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
                              "search-result",
                              transition: TransitionType.fadeIn,
                            );
                          },
                          child: Text(
                            intlDelegate.search,
                            style: TextStyle(
                              color: AppConstants.whiteColor,
                              fontSize: AppConstants.font13,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0.0,
            width: _size.width,
            height: 180.0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/bottom_pattern.png",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
