import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/router.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ProfileOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final S intlDelegate = S.of(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 4.0),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 15.0,
                ),
                color: Color(0xFF78CBFA),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      FlutterIcons.phone_mdi,
                      color: AppConstants.whiteColor,
                      size: 16.0,
                    ),
                    Text(
                      " ${intlDelegate.voice_call}",
                      style: TextStyle(
                        fontSize: AppConstants.font12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 4.0),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 15.0,
                ),
                color: Color(0xFF9B7FF9),
                onPressed: () {
                  AppRouter.router.navigateTo(
                    context,
                    "video-call",
                    transition: TransitionType.fadeIn,
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      FlutterIcons.video_mco,
                      color: AppConstants.whiteColor,
                      size: 16.0,
                    ),
                    Text(
                      " ${intlDelegate.video_call}",
                      style: TextStyle(
                        fontSize: AppConstants.font12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 15.0,
                ),
                color: Color(0xFFF6B881),
                onPressed: () {
                  AppRouter.router.navigateTo(
                    context,
                    "chat-screen",
                    transition: TransitionType.fadeIn,
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      FlutterIcons.chat_ent,
                      color: AppConstants.whiteColor,
                      size: 16.0,
                    ),
                    Text(
                      " ${intlDelegate.message}",
                      style: TextStyle(
                        fontSize: AppConstants.font12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
