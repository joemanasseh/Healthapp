import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/pages/booking_successful.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:doctor_finder/widgets/appointment_slot.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class BookAppointment extends StatefulWidget {
  @override
  _BookAppointmentState createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  bool _loading = false;
  int _activeDay = 2;
  String selectedTime = "";
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);
    final S intlDelegate = S.of(context);
    ThemeUtil.initScreenUtil(context);
    List<String> daysOfWeek = AppConstants.getWeekDays(intlDelegate);

    final setSelectedTime = (String val) {
      setState(() {
        selectedTime = val;
      });
    };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: Icon(
          FlutterIcons.keyboard_backspace_mdi,
          color: ThemeUtil.lightDarkColor(
            AppConstants.quietBlack,
            Colors.white,
            dynamicTheme.data.brightness,
          ),
        ),
        centerTitle: true,
        title: Text(
          intlDelegate.appointment,
          style: dynamicTheme.data.textTheme.headline6.copyWith(
            fontSize: AppConstants.font19,
            color: ThemeUtil.lightDarkColor(
              AppConstants.quietBlack,
              Colors.white,
              dynamicTheme.data.brightness,
            ),
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraint) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              children: [
                                DropdownButton(
                                  underline: SizedBox(),
                                  items: AppConstants.getYearMonths(
                                    intlDelegate,
                                  )
                                      .map(
                                        (e) => DropdownMenuItem(
                                          child: Text(
                                            e,
                                            style: TextStyle(
                                              color: ThemeUtil.lightDarkColor(
                                                AppConstants.deepBlue,
                                                Colors.white,
                                                dynamicTheme.data.brightness,
                                              ),
                                              fontSize: AppConstants.font13,
                                              fontWeight: AppConstants.boldFont,
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                  onChanged: (val) {},
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                DropdownButton(
                                  underline: SizedBox(),
                                  items: List.generate(
                                    10,
                                    (index) => (DateTime.now().year + index)
                                        .toString(),
                                  )
                                      .map(
                                        (e) => DropdownMenuItem(
                                          child: Text(
                                            e,
                                            style: TextStyle(
                                              color: ThemeUtil.lightDarkColor(
                                                AppConstants.deepBlue,
                                                Colors.white,
                                                dynamicTheme.data.brightness,
                                              ),
                                              fontSize: AppConstants.font13,
                                              fontWeight: AppConstants.boldFont,
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                  onChanged: (val) {},
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 80.0,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: List.generate(
                                  31,
                                  (index) => GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _activeDay = index;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 120),
                                      width: ScreenUtil().setWidth(50.0),
                                      margin: EdgeInsets.only(right: 7.0),
                                      decoration: BoxDecoration(
                                        color: index == _activeDay
                                            ? AppConstants.primaryColor
                                            : ThemeUtil.getCardColor(
                                                dynamicTheme.data.brightness),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            daysOfWeek[index % 7],
                                            style: TextStyle(
                                              color: index != _activeDay
                                                  ? ThemeUtil.lightDarkColor(
                                                      AppConstants.deepBlue,
                                                      Colors.white,
                                                      dynamicTheme
                                                          .data.brightness,
                                                    )
                                                  : Colors.white,
                                              fontWeight: AppConstants.boldFont,
                                              fontSize: AppConstants.font14,
                                            ),
                                          ),
                                          SizedBox(height: 10.0),
                                          Text(
                                            (index + 1)
                                                .toString()
                                                .padLeft(2, "0"),
                                            style: TextStyle(
                                              color: index != _activeDay
                                                  ? ThemeUtil.lightDarkColor(
                                                      AppConstants.deepBlue,
                                                      Colors.white,
                                                      dynamicTheme
                                                          .data.brightness,
                                                    )
                                                  : Colors.white,
                                              fontSize: AppConstants.font14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ).toList(),
                              ),
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            AppointmentSlot(
                              timeOfDay: intlDelegate.morning_slot,
                              times: [
                                "10:10 am",
                                "10:30 am",
                                "10:50 am",
                                "11:20 am",
                                "11:40 am",
                              ],
                              setSelectedTime: setSelectedTime,
                              selectedTime: selectedTime,
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            AppointmentSlot(
                              timeOfDay: intlDelegate.afternoon_slot,
                              times: [
                                "02:10 pm",
                                "02:20 pm",
                                "02:40 pm",
                              ],
                              setSelectedTime: setSelectedTime,
                              selectedTime: selectedTime,
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            AppointmentSlot(
                              timeOfDay: intlDelegate.evening_slot,
                              times: [
                                "07:00 pm",
                                "07:20 pm",
                                "07:40 pm",
                                "08:00 pm",
                                "08:20 pm",
                              ],
                              setSelectedTime: setSelectedTime,
                              selectedTime: selectedTime,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      width: _size.width,
                      height: AppConstants.buttonHeight,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        color: AppConstants.primaryColor,
                        onPressed: () {
                          this.setState(() {
                            _loading = true;
                          });
                          Future.delayed(Duration(seconds: 2), () {
                            this.setState(() {
                              _loading = false;
                            });
                            showMaterialModalBottomSheet(
                              context: context,
                              duration: Duration(milliseconds: 800),
                              builder: (context, scrollController) => Container(
                                height: _size.height,
                                color: AppConstants.primaryColor,
                                child: BookingSuccessful(),
                              ),
                            );
                          });
                        },
                        child: _loading
                            ? CupertinoActivityIndicator(
                                radius: 13.0,
                              )
                            : Text(
                                intlDelegate.confirm_appointment,
                                style: TextStyle(
                                  color: AppConstants.whiteColor,
                                  fontSize: AppConstants.font13,
                                ),
                              ),
                      ),
                    ),
                    SizedBox(
                      height: 80.0,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
