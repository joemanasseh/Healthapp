import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/models/category.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/router.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:doctor_finder/widgets/doctors_carousel.dart';
import 'package:doctor_finder/widgets/home_carousel.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);
    final S intlDelegate = S.of(context);
    ThemeUtil.initScreenUtil(context);
    List<Category> _categories = [
      Category(
        name: intlDelegate.pediatrician,
        image: "assets/images/pediatrician.png",
      ),
      Category(
        name: intlDelegate.neurosurgeon,
        image: "assets/images/neurosurgeon.png",
      ),
      Category(
        name: intlDelegate.cardiologist,
        image: "assets/images/cardiologist.png",
      ),
      Category(
        name: intlDelegate.psychiatrist,
        image: "assets/images/psychiatrist.png",
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 25.0,
                ),
                child: GestureDetector(
                  onTap: () {
                    AppRouter.router.navigateTo(
                      context,
                      "settings",
                      transition: TransitionType.fadeIn,
                    );
                  },
                  child: Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: intlDelegate.find_your,
                              style: dynamicTheme.data.textTheme.headline6
                                  .copyWith(
                                fontSize: AppConstants.font18,
                              ),
                            ),
                            TextSpan(
                              text: "\n${intlDelegate.specialist}",
                              style: dynamicTheme.data.textTheme.headline3
                                  .copyWith(
                                fontSize: AppConstants.font22,
                                fontWeight: FontWeight.bold,
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
                      Spacer(),
                      IconButton(
                        icon: Icon(FlutterIcons.search_fea),
                        onPressed: () {
                          AppRouter.router.navigateTo(
                            context,
                            "search-doctor",
                            transition: TransitionType.fadeIn,
                          );
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      IconButton(
                        icon: SvgPicture.asset(
                          "assets/svg/chat.svg",
                          color: ThemeUtil.getTextColor(
                            dynamicTheme.data.brightness,
                          ),
                        ),
                        onPressed: () {
                          AppRouter.router.navigateTo(
                            context,
                            "message-list",
                            transition: TransitionType.fadeIn,
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
              HomeCarousel(),
              Container(
                margin: EdgeInsets.only(top: 25.0),
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      intlDelegate.categories,
                      style: dynamicTheme.data.textTheme.caption.copyWith(
                        fontSize: AppConstants.font13,
                        fontWeight: AppConstants.boldFont,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        AppRouter.router.navigateTo(
                          context,
                          "home/1",
                          transition: TransitionType.fadeIn,
                        );
                      },
                      child: Container(
                        child: Text(
                          intlDelegate.see_all,
                          style: dynamicTheme.data.textTheme.caption.copyWith(
                            fontSize: AppConstants.font13,
                            fontWeight: AppConstants.boldFont,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 110.0,
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: _categories
                      .map<Widget>(
                        (e) => GestureDetector(
                          onTap: () {
                            AppRouter.router.navigateTo(
                              context,
                              "home/1",
                              transition: TransitionType.fadeIn,
                            );
                          },
                          child: Container(
                            width: ScreenUtil().setWidth(100.0),
                            height: ScreenUtil().setHeight(100.0),
                            margin: EdgeInsets.only(
                              right: 10.0,
                            ),
                            decoration: BoxDecoration(
                              color: ThemeUtil.getCardColor(
                                dynamicTheme.data.brightness,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  e.image,
                                ),
                                Container(
                                  child: Text(
                                    e.name,
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: dynamicTheme.data.textTheme.caption
                                        .copyWith(
                                      fontSize: AppConstants.font12,
                                      fontWeight: AppConstants.boldFont,
                                    ),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    vertical: 10.0,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 35.0),
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      intlDelegate.available_doctors,
                      style: dynamicTheme.data.textTheme.caption.copyWith(
                        fontSize: AppConstants.font13,
                        fontWeight: AppConstants.boldFont,
                      ),
                    ),
                    Text(
                      intlDelegate.see_all,
                      style: dynamicTheme.data.textTheme.caption.copyWith(
                        fontSize: AppConstants.font13,
                        fontWeight: AppConstants.boldFont,
                      ),
                    )
                  ],
                ),
              ),
              DoctorsCarousel(),
              SizedBox(
                height: 35.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
