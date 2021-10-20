import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:doctor_finder/utils/router.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);
    final S intlDelegate = S.of(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 15.0,
            ),
            height: _size.height - kToolbarHeight - 45.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
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
                  height: 80.0,
                ),
                Text(
                  intlDelegate.reset_password,
                  style: TextStyle(
                    fontWeight: AppConstants.boldFont,
                    fontSize: AppConstants.font22,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Enter the email address associated with your account, and we will send reset instructions.",
                  style: dynamicTheme.data.textTheme.caption.copyWith(
                    fontSize: AppConstants.smallFontSize,
                  ),
                ),
                SizedBox(height: 30.0),
                Form(
                  child: Column(
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
                      SizedBox(height: 30.0),
                    ],
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
                        "password-sent",
                        transition: TransitionType.fadeIn,
                      );
                    },
                    child: Text(
                      intlDelegate.continue_str.toUpperCase(),
                      style: TextStyle(
                        color: AppConstants.whiteColor,
                        fontSize: AppConstants.font13,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
