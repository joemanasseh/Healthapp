import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/router.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);
    final S intlDelegate = S.of(context);

    return GestureDetector(
      onTap: () {
        AppRouter.router.navigateTo(
          context,
          "doctor-profile",
          transition: TransitionType.fadeIn,
        );
      },
      child: Container(
        height: 240.0,
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
          color:
              ThemeUtil.getCardColor(DynamicTheme.of(context).data.brightness),
          borderRadius: BorderRadius.circular(18.0),
        ),
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dr Serena Gomez",
                    style: dynamicTheme.data.textTheme.bodyText2.copyWith(
                      fontSize: AppConstants.font15,
                      fontWeight: AppConstants.boldFont,
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "Medicine Specialist",
                    style: dynamicTheme.data.textTheme.bodyText2.copyWith(
                      fontSize: AppConstants.font13,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    child: RatingBar(
                      initialRating: 4.5,
                      itemSize: ScreenUtil().setWidth(17.0),
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
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
                    height: 10.0,
                  ),
                  Text(
                    intlDelegate.experience,
                    style: dynamicTheme.data.textTheme.caption.copyWith(
                      fontSize: AppConstants.font13,
                    ),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    "8 Years",
                    style: dynamicTheme.data.textTheme.bodyText2.copyWith(
                      fontSize: AppConstants.font15,
                      fontWeight: AppConstants.boldFont,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    intlDelegate.patients,
                    style: dynamicTheme.data.textTheme.caption.copyWith(
                      fontSize: AppConstants.font13,
                    ),
                  ),
                  Text(
                    "1.08K",
                    style: dynamicTheme.data.textTheme.bodyText2.copyWith(
                      fontSize: AppConstants.font15,
                      fontWeight: AppConstants.boldFont,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment(0, 2),
              height: ScreenUtil().setHeight(220.0),
              decoration: BoxDecoration(),
              child: Image.asset(
                "assets/images/doctor_1.png",
              ),
            )
          ],
        ),
      ),
    );
  }
}
