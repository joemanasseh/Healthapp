import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/router.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:doctor_finder/widgets/home_carousel.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DrugStore extends StatefulWidget {
  @override
  _DrugStoreState createState() => _DrugStoreState();
}

class _DrugStoreState extends State<DrugStore> {
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
                              text: "${intlDelegate.drug}",
                              style: dynamicTheme.data.textTheme.headline6
                                  .copyWith(
                                fontSize: AppConstants.font18,
                              ),
                            ),
                            TextSpan(
                              text: "\n${intlDelegate.store_online}",
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
                        icon: Icon(FlutterIcons.cart_zoc),
                        onPressed: () {
                          AppRouter.router.navigateTo(
                            context,
                            "cart",
                            transition: TransitionType.fadeIn,
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
              HomeCarousel(),
              SizedBox(height: 20.0),
              Container(
                margin: EdgeInsets.only(top: 25.0),
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      intlDelegate.available_drugs,
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
              SizedBox(height: 15.0),
              Flexible(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15.0,
                      crossAxisSpacing: 15.0,
                      childAspectRatio: 1.1,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          AppRouter.router.navigateTo(
                            context,
                            "drug-detail",
                            transition: TransitionType.fadeIn,
                          );
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              color: ThemeUtil.getCardColor(
                                dynamicTheme.data.brightness,
                              ),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Image.asset(
                                    "assets/images/drug1.png",
                                  ),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  "CELLGEVITY",
                                  style: dynamicTheme.data.textTheme.bodyText2
                                      .copyWith(
                                    fontSize: AppConstants.font12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "USD 20.0",
                                  style: dynamicTheme.data.textTheme.bodyText2
                                      .copyWith(
                                    fontSize: AppConstants.font12,
                                  ),
                                ),
                              ],
                            )),
                      );
                    },
                    itemCount: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
