import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/router.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);
    final S intlDelegate = S.of(context);
    ThemeUtil.initScreenUtil(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 10.0,
              );
            },
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: ScreenUtil().setHeight(120.0),
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: ThemeUtil.getCardColor(dynamicTheme.data.brightness),
                ),
                child: Row(
                  children: [
                    FractionallySizedBox(
                      heightFactor: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Color(0xFFF7F8FC),
                        ),
                        child: Image.asset(
                          "assets/images/drug1.png",
                        ),
                        width: 110.0,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              "Cellgevity 500ML Pack",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: dynamicTheme.data.textTheme.bodyText2
                                  .copyWith(
                                fontWeight: AppConstants.boldFont,
                                fontSize: AppConstants.font15,
                              ),
                            ),
                          ),
                          SizedBox(height: 6.0),
                          Container(
                            child: Text(
                              "\$200.20",
                              style:
                                  dynamicTheme.data.textTheme.caption.copyWith(
                                fontSize: AppConstants.font13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                  vertical: 4.0,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color: ThemeUtil.lightDarkColor(
                                      AppConstants.greyColor,
                                      AppConstants.whiteColor,
                                      dynamicTheme.data.brightness,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "-",
                                  style: dynamicTheme.data.textTheme.bodyText2
                                      .copyWith(
                                    fontSize: AppConstants.font16,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                "1",
                                style: dynamicTheme.data.textTheme.bodyText2
                                    .copyWith(
                                  fontSize: AppConstants.font15,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                  vertical: 4.0,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color: ThemeUtil.lightDarkColor(
                                      AppConstants.greyColor,
                                      AppConstants.whiteColor,
                                      dynamicTheme.data.brightness,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "+",
                                  style: dynamicTheme.data.textTheme.bodyText2
                                      .copyWith(
                                    fontSize: AppConstants.font16,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            FlutterIcons.trash_2_fea,
                            size: 20.0,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  intlDelegate.total,
                  style: dynamicTheme.data.textTheme.bodyText2.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: AppConstants.font12,
                  ),
                ),
                Text(
                  "\$200.20",
                  style: dynamicTheme.data.textTheme.bodyText2.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: AppConstants.font12,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
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
                  "payment-page",
                  transition: TransitionType.fadeIn,
                );
              },
              child: Text(
                "Checkout",
                style: TextStyle(
                  color: AppConstants.whiteColor,
                  fontSize: AppConstants.font13,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
        ],
      ),
    );
  }
}
