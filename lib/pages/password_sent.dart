import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class PasswordSent extends StatefulWidget {
  @override
  _PasswordSentState createState() => _PasswordSentState();
}

class _PasswordSentState extends State<PasswordSent> {
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
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
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 150.0,
                        height: 150.0,
                        padding: EdgeInsets.all(20.0),
                        child: Image.asset(
                          "assets/images/mail.png",
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(21, 77, 222, 0.11),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      SizedBox(height: 25.0),
                      Text(
                        intlDelegate.check_mail,
                        style: dynamicTheme.data.textTheme.subtitle1.copyWith(
                          fontWeight: AppConstants.boldFont,
                          fontSize: AppConstants.font17,
                        ),
                      ),
                      SizedBox(
                        height: 7.0,
                      ),
                      Text(
                        intlDelegate.password_sent,
                        textAlign: TextAlign.center,
                        style: dynamicTheme.data.textTheme.caption.copyWith(
                          fontSize: AppConstants.font14,
                          height: 1.3,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        height: AppConstants.buttonHeight,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          color: AppConstants.primaryColor,
                          onPressed: () {},
                          child: Text(
                            intlDelegate.open_mail,
                            style: TextStyle(
                              color: AppConstants.whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Text(
                    intlDelegate.didnt_receive_mail,
                    textAlign: TextAlign.center,
                    style: dynamicTheme.data.textTheme.caption.copyWith(
                      fontSize: AppConstants.smallFontSize2x,
                      height: 1.3,
                    ),
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
