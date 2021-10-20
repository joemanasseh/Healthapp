import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/router.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:doctor_finder/widgets/doctor_card.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/svg.dart';

class AvailableSpecialist extends StatefulWidget {
  @override
  _AvailableSpecialistState createState() => _AvailableSpecialistState();
}

class _AvailableSpecialistState extends State<AvailableSpecialist> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);
    final S intlDelegate = S.of(context);
    ThemeUtil.initScreenUtil(context);
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 150.0,
              backgroundColor:
                  ThemeUtil.getCardColor(dynamicTheme.data.brightness),
              elevation: 0.0,
              pinned: true,
              automaticallyImplyLeading: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                titlePadding: EdgeInsets.all(0.0),
                title: Container(
                  margin: EdgeInsets.only(bottom: 30.0),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  width: _size.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: intlDelegate.available,
                                  style: dynamicTheme.data.textTheme.headline6
                                      .copyWith(
                                    fontSize: AppConstants.font12,
                                  ),
                                ),
                                TextSpan(
                                  text: "\n${intlDelegate.specialists}",
                                  style: dynamicTheme.data.textTheme.headline3
                                      .copyWith(
                                    fontSize: AppConstants.font14,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.6,
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
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            splashRadius: 25.0,
                            icon: Icon(
                              FlutterIcons.search_fea,
                              size: 16.0,
                            ),
                            onPressed: () {
                              AppRouter.router.navigateTo(
                                context,
                                "search-doctor",
                                transition: TransitionType.fadeIn,
                              );
                            },
                          ),
                          IconButton(
                            splashRadius: 25.0,
                            icon: SvgPicture.asset(
                              "assets/svg/chat.svg",
                              width: 16.0,
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
                      )
                    ],
                  ),
                ),
              ),
              bottom: TabBar(
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle: TextStyle(
                  fontSize: AppConstants.font12,
                  fontWeight: FontWeight.bold,
                ),
                labelColor: dynamicTheme.data.textTheme.bodyText2.color,
                unselectedLabelColor: dynamicTheme.data.textTheme.caption.color,
                tabs: [
                  Tab(
                    child: Container(
                      child: Text(
                        intlDelegate.pediatrician,
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text(
                        intlDelegate.neurosurgeon,
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text(
                        intlDelegate.cardiologist,
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text(
                        intlDelegate.psychologist,
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text(
                        intlDelegate.optician,
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text(
                        intlDelegate.dentist,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                children: [
                  ListView.separated(
                    padding: EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 5.0,
                    ),
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return DoctorCard();
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 10.0,
                      );
                    },
                  ),
                  ListView.separated(
                    padding: EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 5.0,
                    ),
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return DoctorCard();
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 10.0,
                      );
                    },
                  ),
                  ListView.separated(
                    padding: EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 5.0,
                    ),
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return DoctorCard();
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 10.0,
                      );
                    },
                  ),
                  ListView.separated(
                    padding: EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 5.0,
                    ),
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return DoctorCard();
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 10.0,
                      );
                    },
                  ),
                  ListView.separated(
                    padding: EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 5.0,
                    ),
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return DoctorCard();
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 10.0,
                      );
                    },
                  ),
                  ListView.separated(
                    padding: EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 5.0,
                    ),
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return DoctorCard();
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 10.0,
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
