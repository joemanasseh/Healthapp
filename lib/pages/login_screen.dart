import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:doctor_finder/utils/router.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);
    final S intlDelegate = S.of(context);
    ThemeUtil.initScreenUtil(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 15.0,
            ),
            height: _size.height - kToolbarHeight - 0.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    padding: EdgeInsets.only(left: 0),
                    alignment: Alignment.centerLeft,
                    icon: Icon(
                      FlutterIcons.chevron_left_fea,
                      size: 25.0,
                      color: dynamicTheme.data.iconTheme.color,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  intlDelegate.sign_in,
                  style: TextStyle(
                    fontWeight: AppConstants.boldFont,
                    fontSize: AppConstants.font22,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  intlDelegate.find_practitioners,
                  style: dynamicTheme.data.textTheme.caption.copyWith(
                    fontSize: AppConstants.smallFontSize,
                  ),
                ),
                SizedBox(height: 30.0),
                Flexible(
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 17.0,
                              horizontal: 20.0,
                            ),
                            border: OutlineInputBorder(),
                            labelText: intlDelegate.email_address,
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
                            border: OutlineInputBorder(),
                            labelText: intlDelegate.password,
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                          ),
                        ),
                        SizedBox(height: 15.0),
                        FlatButton(
                          onPressed: () {
                            AppRouter.router.navigateTo(
                              context,
                              "forgot-password",
                              transition: TransitionType.fadeIn,
                            );
                          },
                          padding: EdgeInsets.only(left: 0),
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          color: Colors.transparent,
                          child: Text(
                            "${intlDelegate.forgot_password}?",
                            textAlign: TextAlign.left,
                            style: dynamicTheme.data.textTheme.caption.copyWith(
                              fontSize: AppConstants.smallFontSize,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                        "home",
                        transition: TransitionType.fadeIn,
                      );
                    },
                    child: Text(
                      intlDelegate.continue_str.toUpperCase(),
                      style: TextStyle(
                        color: AppConstants.whiteColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: <Widget>[
                    Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        intlDelegate.continue_social,
                        style: dynamicTheme.data.textTheme.caption.copyWith(
                          fontSize: AppConstants.smallFontSize,
                        ),
                      ),
                    ),
                    Expanded(child: Divider()),
                  ],
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
                    color: AppConstants.blackColor,
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          MdiIcons.apple,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          intlDelegate.signin_apple,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppConstants.whiteColor,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Container(
                  width: _size.width,
                  height: AppConstants.buttonHeight,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      side: BorderSide(
                        color: Color(0xFF4267B2),
                      ),
                    ),
                    color: Color(0xFF4267B2),
                    onPressed: () {
                      AppRouter.router.navigateTo(
                        context,
                        "login",
                        transition: TransitionType.fadeIn,
                      );
                    },
                    child: Text(
                      intlDelegate.signin_fb,
                      style: TextStyle(
                        color: AppConstants.whiteColor,
                        fontSize: AppConstants.font13,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
