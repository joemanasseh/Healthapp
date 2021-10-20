import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PastAppointments extends StatefulWidget {
  @override
  _PastAppointmentsState createState() => _PastAppointmentsState();
}

class _PastAppointmentsState extends State<PastAppointments> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);
    final S intlDelegate = S.of(context);
    ThemeUtil.initScreenUtil(context);

    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.all(0),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.only(
            left: 12.0,
            right: 12.0,
            bottom: index == 19 ? 20.0 : 12.0,
            top: index == 0 ? 20.0 : 0.0,
          ),
          height: ScreenUtil().setHeight(180.0),
          width: _size.width,
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: ThemeUtil.getCardColor(dynamicTheme.data.brightness),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: RichText(
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "${intlDelegate.date}\n",
                              style: TextStyle(
                                fontSize: AppConstants.font12,
                                color: ThemeUtil.lightDarkColor(
                                  AppConstants.lightBlackSub,
                                  AppConstants.whiteColor,
                                  dynamicTheme.data.brightness,
                                ),
                              ),
                            ),
                            TextSpan(
                              text: "01 Jan 2020",
                              style: TextStyle(
                                color: ThemeUtil.lightDarkColor(
                                  AppConstants.deepBlue,
                                  Colors.white,
                                  dynamicTheme.data.brightness,
                                ),
                                fontSize: AppConstants.font13,
                                fontWeight: AppConstants.boldFont,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "${intlDelegate.time}\n",
                              style: TextStyle(
                                fontSize: AppConstants.font12,
                                color: ThemeUtil.lightDarkColor(
                                  AppConstants.lightBlackSub,
                                  AppConstants.whiteColor,
                                  dynamicTheme.data.brightness,
                                ),
                              ),
                            ),
                            TextSpan(
                              text: "03:00 PM",
                              style: TextStyle(
                                color: ThemeUtil.lightDarkColor(
                                  AppConstants.deepBlue,
                                  Colors.white,
                                  dynamicTheme.data.brightness,
                                ),
                                fontSize: AppConstants.font13,
                                fontWeight: AppConstants.boldFont,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: RichText(
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "${intlDelegate.doctor}\n",
                              style: TextStyle(
                                fontSize: AppConstants.font12,
                                color: ThemeUtil.lightDarkColor(
                                  AppConstants.lightBlackSub,
                                  AppConstants.whiteColor,
                                  dynamicTheme.data.brightness,
                                ),
                              ),
                            ),
                            TextSpan(
                              text: "Nafiz Kamal",
                              style: TextStyle(
                                color: ThemeUtil.lightDarkColor(
                                  AppConstants.deepBlue,
                                  Colors.white,
                                  dynamicTheme.data.brightness,
                                ),
                                fontSize: AppConstants.font13,
                                fontWeight: AppConstants.boldFont,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Text(
                  "." * _size.width.ceil() * 2,
                  maxLines: 1,
                  style: TextStyle(
                    color: Color.fromRGBO(190, 216, 245, 1),
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: RichText(
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "${intlDelegate.type}\n",
                              style: TextStyle(
                                fontSize: AppConstants.font12,
                                color: ThemeUtil.lightDarkColor(
                                  AppConstants.lightBlackSub,
                                  AppConstants.whiteColor,
                                  dynamicTheme.data.brightness,
                                ),
                              ),
                            ),
                            TextSpan(
                              text: "Dentist",
                              style: TextStyle(
                                color: ThemeUtil.lightDarkColor(
                                  AppConstants.deepBlue,
                                  Colors.white,
                                  dynamicTheme.data.brightness,
                                ),
                                fontSize: AppConstants.font13,
                                fontWeight: AppConstants.boldFont,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: RichText(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "${intlDelegate.place}\n",
                              style: TextStyle(
                                fontSize: AppConstants.font12,
                                color: ThemeUtil.lightDarkColor(
                                  AppConstants.lightBlackSub,
                                  AppConstants.whiteColor,
                                  dynamicTheme.data.brightness,
                                ),
                              ),
                            ),
                            TextSpan(
                              text: "New City Clinic",
                              style: TextStyle(
                                color: ThemeUtil.lightDarkColor(
                                  AppConstants.deepBlue,
                                  Colors.white,
                                  dynamicTheme.data.brightness,
                                ),
                                fontSize: AppConstants.font13,
                                fontWeight: AppConstants.boldFont,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Container(
                        height: ScreenUtil().setHeight(38.0),
                        child: FlatButton(
                          child: FittedBox(
                            child: Text(
                              intlDelegate.reschedule,
                              style: TextStyle(
                                fontSize: AppConstants.font12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          color: AppConstants.primaryColor,
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      itemCount: 20,
    );
  }
}
