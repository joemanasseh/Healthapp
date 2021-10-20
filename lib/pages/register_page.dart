import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/router.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                  intlDelegate.create_account,
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
                      SizedBox(height: 25.0),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 17.0,
                            horizontal: 20.0,
                          ),
                          border: OutlineInputBorder(),
                          labelText: intlDelegate.first_name,
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
                          labelText: intlDelegate.last_name,
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
                          labelText: intlDelegate.phone_number,
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Container(
                  width: _size.width,
                  height: AppConstants.buttonHeight,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    color: AppConstants.primaryColor,
                    onPressed: () {},
                    child: Text(
                      intlDelegate.continue_str.toUpperCase(),
                      style: TextStyle(
                        color: AppConstants.whiteColor,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Wrap(
                    runAlignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        "${intlDelegate.already_have_account} ",
                        textAlign: TextAlign.center,
                        style: dynamicTheme.data.textTheme.caption.copyWith(
                          fontSize: AppConstants.smallFontSize,
                        ),
                      ),
                      MaterialButton(
                        minWidth: 20.0,
                        padding: EdgeInsets.only(left: 5.0, right: 10.0),
                        onPressed: () {
                          AppRouter.router.navigateTo(
                            context,
                            "login",
                            transition: TransitionType.fadeIn,
                          );
                        },
                        child: Text(
                          intlDelegate.login2,
                          textAlign: TextAlign.left,
                          style: dynamicTheme.data.textTheme.caption.copyWith(
                            fontSize: AppConstants.font13,
                            color: AppConstants.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
