import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class VideoCall extends StatefulWidget {
  @override
  _VideoCallState createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    ThemeUtil.initScreenUtil(context);
    return Scaffold(
      body: Container(
        height: _size.height,
        decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
            alignment: Alignment(0.9, 0),
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/images/doctor_call.png",
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Dr. Patrick Kahn",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppConstants.darkBackground,
                fontSize: AppConstants.font16,
                fontWeight: AppConstants.boldFont,
              ),
            ),
            Text(
              "12:32",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppConstants.lightBlackSub,
                fontSize: AppConstants.font13,
                fontWeight: AppConstants.boldFont,
              ),
            ),
            Container(
              height: 120.0,
              margin: EdgeInsets.only(bottom: 55.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment(0, 0.5),
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.symmetric(vertical: 10.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppConstants.inactiveColor,
                          ),
                          child: Icon(
                            FlutterIcons.keyboard_voice_mdi,
                            size: 25.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(18.0),
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFE85050),
                        ),
                        child: Icon(
                          Icons.phone,
                          size: 30.0,
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Align(
                        alignment: Alignment(0, 0.5),
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.symmetric(vertical: 10.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppConstants.inactiveColor,
                          ),
                          child: Icon(
                            FlutterIcons.videocam_mdi,
                            size: 25.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text("Swipe up to send message")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
