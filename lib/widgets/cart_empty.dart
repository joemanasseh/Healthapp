import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';

class CartEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);
    final S intlDelegate = S.of(context);
    ThemeUtil.initScreenUtil(context);

    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/empty.png",
            width: 120.0,
            height: 200.0,
          ),
          Text(
            intlDelegate.cart_empty,
            textAlign: TextAlign.center,
            style: dynamicTheme.data.textTheme.bodyText2.copyWith(
              fontSize: AppConstants.font16,
              height: 1.2,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 80.0,
          ),
        ],
      ),
    );
  }
}
