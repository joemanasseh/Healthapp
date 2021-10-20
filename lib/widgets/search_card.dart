import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 30.0,
      ),
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: ThemeUtil.getCardColor(
          dynamicTheme.data.brightness,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Stack(
            overflow: Overflow.visible,
            children: [
              Container(
                width: ScreenUtil().setWidth(58.0),
                height: ScreenUtil().setHeight(60.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(81, 136, 253, 1),
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              Positioned(
                top: -25.0,
                left: 0.0,
                right: 0.0,
                child: Image.asset(
                  "assets/images/doctor_search.png",
                  width: ScreenUtil().setWidth(50.0),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 15.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dr. Selina Gomez",
                  style: dynamicTheme.data.textTheme.bodyText2.copyWith(
                    fontSize: AppConstants.font15,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Carddiologist (MBBS,FCPS)",
                  style: dynamicTheme.data.textTheme.caption.copyWith(
                    fontSize: AppConstants.font13,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(FlutterIcons.clock_evi),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "12:00 PM - 04:00 PM",
                      style: dynamicTheme.data.textTheme.caption.copyWith(
                        fontSize: AppConstants.font12,
                        height: 1.65,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Icon(FlutterIcons.location_evi),
                    SizedBox(
                      width: 5.0,
                    ),
                    Flexible(
                      child: Text(
                        "Lagos, NG",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: dynamicTheme.data.textTheme.caption.copyWith(
                          fontSize: AppConstants.font12,
                          height: 1.65,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
