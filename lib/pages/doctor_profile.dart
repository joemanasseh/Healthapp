import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:doctor_finder/widgets/profile_options.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:doctor_finder/utils/router.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorProfile extends StatefulWidget {
  @override
  _DoctorProfileState createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);
    final S intlDelegate = S.of(context);
    ThemeUtil.initScreenUtil(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0.0,
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
              "Dr. Teegar David",
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
            flexibleSpace: Container(
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     fit: BoxFit.cover,
                //     image: AssetImage(
                //       "assets/images/doctor_profile.png",
                //     ),
                //   ),
                // ),
                ),
            expandedHeight: ScreenUtil().setHeight(370.0),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  ProfileOptions(),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    child: Text(
                      "Medicine & Heart Specialist",
                      style: TextStyle(
                        fontSize: AppConstants.smallFontSize4x,
                        fontWeight: AppConstants.boldFont,
                        color: ThemeUtil.lightDarkColor(
                          AppConstants.quietBlack,
                          Colors.white,
                          dynamicTheme.data.brightness,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 9.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    child: Text(
                      "Good Health Clinic, MBBS, FCPS",
                      style: TextStyle(
                        fontSize: AppConstants.smallFontSize,
                        color: ThemeUtil.lightDarkColor(
                          AppConstants.quietBlack,
                          Colors.white,
                          dynamicTheme.data.brightness,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 9.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 12.0,
                    ),
                    child: RatingBar(
                      initialRating: 4.5,
                      itemSize: 20.0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    child: Text(
                      "${intlDelegate.about} Olayemi",
                      style: TextStyle(
                        fontSize: AppConstants.font15,
                        fontWeight: AppConstants.boldFont,
                        color: ThemeUtil.lightDarkColor(
                          AppConstants.quietBlack,
                          Colors.white,
                          dynamicTheme.data.brightness,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consec tetur adipi scing elit, sed do eiusmod tempor incididunt.",
                      style: dynamicTheme.data.textTheme.caption.copyWith(
                        height: 1.5,
                        fontSize: AppConstants.font13,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                intlDelegate.patients,
                                style: dynamicTheme.data.textTheme.caption
                                    .copyWith(
                                  fontSize: AppConstants.font12,
                                ),
                              ),
                              Text(
                                "1.08K",
                                style: TextStyle(
                                  color: ThemeUtil.lightDarkColor(
                                    AppConstants.deepBlue,
                                    Colors.white,
                                    dynamicTheme.data.brightness,
                                  ),
                                  fontWeight: FontWeight.bold,
                                  fontSize: AppConstants.normalFontSize2x,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                intlDelegate.experience,
                                style: dynamicTheme.data.textTheme.caption
                                    .copyWith(
                                  fontSize: AppConstants.font12,
                                ),
                              ),
                              Text(
                                "8 years",
                                style: TextStyle(
                                  color: ThemeUtil.lightDarkColor(
                                    AppConstants.deepBlue,
                                    Colors.white,
                                    dynamicTheme.data.brightness,
                                  ),
                                  fontWeight: FontWeight.bold,
                                  fontSize: AppConstants.normalFontSize2x,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                intlDelegate.reviews,
                                style: dynamicTheme.data.textTheme.caption
                                    .copyWith(
                                  fontSize: AppConstants.font12,
                                ),
                              ),
                              Text(
                                "2.05K",
                                style: TextStyle(
                                  color: ThemeUtil.lightDarkColor(
                                    AppConstants.deepBlue,
                                    Colors.white,
                                    dynamicTheme.data.brightness,
                                  ),
                                  fontWeight: FontWeight.bold,
                                  fontSize: AppConstants.normalFontSize2x,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
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
                          "book-appointment",
                          transition: TransitionType.inFromRight,
                          transitionDuration: Duration(milliseconds: 400),
                        );
                      },
                      child: Text(
                        intlDelegate.book_appointment,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppConstants.whiteColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
