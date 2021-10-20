import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:doctor_finder/widgets/search_card.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:doctor_finder/utils/router.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

class SearchResult extends StatefulWidget {
  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);
    final S intlDelegate = S.of(context);
    ThemeUtil.initScreenUtil(context);
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
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
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: intlDelegate.selected_area,
                            style:
                                dynamicTheme.data.textTheme.headline6.copyWith(
                              fontSize: AppConstants.font12,
                            ),
                          ),
                          TextSpan(
                            text: "\nBoston",
                            style:
                                dynamicTheme.data.textTheme.headline3.copyWith(
                              fontSize: AppConstants.font16,
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
              Container(
                padding: EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 30.0,
                ),
                child: Row(
                  children: [
                    Text(
                      "All Cardiologist",
                      style: dynamicTheme.data.textTheme.bodyText2.copyWith(
                        fontSize: AppConstants.font13,
                      ),
                    ),
                    Spacer(),
                    Text(
                      intlDelegate.see_all,
                      style: dynamicTheme.data.textTheme.bodyText2.copyWith(
                        fontSize: AppConstants.font13,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return SearchCard();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 9.0);
                },
                itemCount: 4,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 30.0,
                ),
                child: Row(
                  children: [
                    Text(
                      "All Cardiologist",
                      style: dynamicTheme.data.textTheme.bodyText2.copyWith(
                        fontSize: AppConstants.font13,
                      ),
                    ),
                    Spacer(),
                    Text(
                      intlDelegate.see_all,
                      style: dynamicTheme.data.textTheme.bodyText2.copyWith(
                        fontSize: AppConstants.font13,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              Container(
                height: 260.0,
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(0.0),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: ThemeUtil.getCardColor(
                          dynamicTheme.data.brightness,
                        ),
                      ),
                      // padding: EdgeInsets.all(30.0),
                      margin: EdgeInsets.only(right: 15.0),
                      width: 350.0,
                      child: Row(
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Dr. Salina Zaman",
                                        style: dynamicTheme
                                            .data.textTheme.bodyText2
                                            .copyWith(
                                          fontSize: AppConstants.font14,
                                          fontWeight: AppConstants.boldFont,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 7.0,
                                      ),
                                      Text(
                                        "Dr. Salina Zaman",
                                        style: dynamicTheme
                                            .data.textTheme.bodyText2
                                            .copyWith(
                                          fontSize: AppConstants.font13,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 7.0,
                                      ),
                                      Container(
                                        child: RatingBar(
                                          initialRating: 4.5,
                                          itemSize: 20.0,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 0.0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        intlDelegate.experience,
                                        style: dynamicTheme
                                            .data.textTheme.caption
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
                                          fontSize:
                                              AppConstants.normalFontSize2x,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        intlDelegate.reviews,
                                        style: dynamicTheme
                                            .data.textTheme.caption
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
                                          fontSize:
                                              AppConstants.normalFontSize2x,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                alignment: Alignment.centerRight,
                                child: Image.asset(
                                  "assets/images/doctor_1.png",
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                width: 350.0,
                                child: Container(
                                  height: 400.0,
                                  width: 350.0,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(0.0, 0.2),
                                      end: Alignment(0.0, 1.0),
                                      colors: dynamicTheme.data.brightness ==
                                              Brightness.dark
                                          ? [
                                              const Color.fromRGBO(
                                                  25, 40, 52, 0),
                                              const Color.fromRGBO(
                                                  25, 40, 52, 1),
                                            ]
                                          : [
                                              const Color.fromRGBO(
                                                  255, 255, 255, 0),
                                              const Color.fromRGBO(
                                                  255, 255, 255, 1),
                                            ],
                                      stops: [0.0, 1.0],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: 20,
                ),
              ),
              SizedBox(height: 20.0)
            ],
          ),
        ),
      ),
    );
  }
}
