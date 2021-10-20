import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';

class AppointmentSlot extends StatefulWidget {
  final String timeOfDay;
  final List<String> times;
  final String selectedTime;
  final Function setSelectedTime;

  AppointmentSlot(
      {this.timeOfDay, this.times, this.selectedTime, this.setSelectedTime});
  @override
  _AppointmentSlotState createState() => _AppointmentSlotState();
}

class _AppointmentSlotState extends State<AppointmentSlot> {
  @override
  Widget build(BuildContext context) {
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            this.widget.timeOfDay,
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
          SizedBox(height: 12.0),
          Wrap(
            children: this.widget.times.map(
              (e) {
                return GestureDetector(
                  onTap: () {
                    this.widget.setSelectedTime(e);
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 120),
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 14.0,
                    ),
                    decoration: BoxDecoration(
                      color: this.widget.selectedTime == e
                          ? AppConstants.primaryColor
                          : ThemeUtil.getCardColor(
                              dynamicTheme.data.brightness),
                      boxShadow: [
                        BoxShadow(
                          color: ThemeUtil.lightDarkColor(
                            Color.fromRGBO(255, 255, 255, 0.2),
                            AppConstants.darkBackground,
                            dynamicTheme.data.brightness,
                          ),
                        ),
                      ],
                      border: Border.all(
                        color: ThemeUtil.lightDarkColor(
                          Colors.grey[300],
                          Colors.grey[900],
                          dynamicTheme.data.brightness,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(
                        7.0,
                      ),
                    ),
                    margin: EdgeInsets.only(top: 4.0, right: 4.0, bottom: 4.0),
                    child: Text(
                      e,
                      style: TextStyle(
                        fontSize: AppConstants.font13,
                        fontWeight: AppConstants.boldFont,
                        color: this.widget.selectedTime != e
                            ? ThemeUtil.lightDarkColor(
                                AppConstants.deepBlue,
                                Colors.white,
                                dynamicTheme.data.brightness,
                              )
                            : Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ).toList(),
          )
        ],
      ),
    );
  }
}
