import 'package:bubble/bubble.dart';
import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool isShowSticker = false;
  @override
  Widget build(BuildContext context) {
    double pixelRatio = MediaQuery.of(context).devicePixelRatio;
    double px = 1 / pixelRatio;
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);
    final S intlDelegate = S.of(context);
    ThemeUtil.initScreenUtil(context);

    BubbleStyle styleSomebody = BubbleStyle(
      nip: BubbleNip.leftTop,
      color: ThemeUtil.getCardColor(dynamicTheme.data.brightness),
      elevation: 1 * px,
      padding: BubbleEdges.symmetric(
        vertical: ScreenUtil().setHeight(14.0),
        horizontal: 20.0,
      ),
      margin: BubbleEdges.only(top: 10.0, right: 50.0),
      alignment: Alignment.topLeft,
    );

    BubbleStyle styleMe = BubbleStyle(
      nip: BubbleNip.rightTop,
      color: AppConstants.primaryColor,
      elevation: 1 * px,
      margin: BubbleEdges.only(top: 10.0, left: 50.0),
      padding: BubbleEdges.symmetric(
        vertical: ScreenUtil().setHeight(14.0),
        horizontal: 20.0,
      ),
      alignment: Alignment.topRight,
    );
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1.5,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            FlutterIcons.keyboard_backspace_mdi,
            color: ThemeUtil.lightDarkColor(
              AppConstants.quietBlack,
              Colors.white,
              dynamicTheme.data.brightness,
            ),
          ),
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                "assets/images/doctor_profile.png",
              ),
              backgroundColor: AppConstants.primaryColor,
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dr. Teegar David",
                  style: TextStyle(
                    color: ThemeUtil.lightDarkColor(
                      AppConstants.quietBlack,
                      Colors.white,
                      dynamicTheme.data.brightness,
                    ),
                    fontSize: AppConstants.smallFontSize2x,
                  ),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  "Online",
                  style: TextStyle(
                    color: ThemeUtil.lightDarkColor(
                      AppConstants.quietBlack,
                      Colors.white54,
                      dynamicTheme.data.brightness,
                    ),
                    fontSize: AppConstants.miniFontSize,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(FlutterIcons.more_vertical_fea),
            color: ThemeUtil.lightDarkColor(
              AppConstants.quietBlack,
              Colors.white,
              dynamicTheme.data.brightness,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                reverse: true,
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                    bottom: 20.0,
                  ),
                  children: [
                    Bubble(
                      alignment: Alignment.center,
                      color: AppConstants.primaryColor,
                      elevation: 1 * px,
                      margin: BubbleEdges.only(top: 8.0),
                      padding: BubbleEdges.symmetric(
                        vertical: ScreenUtil().setHeight(12.0),
                        horizontal: 30.0,
                      ),
                      child: Text(
                        'TODAY',
                        style: TextStyle(
                          fontSize: AppConstants.font10,
                          color: AppConstants.whiteColor,
                        ),
                      ),
                    ),
                    Bubble(
                      style: styleSomebody,
                      child: Text(
                        'Hi Jason. Sorry to bother you. I have a queston for you.',
                        style: TextStyle(
                          fontSize: AppConstants.font12,
                        ),
                      ),
                    ),
                    Bubble(
                      style: styleMe,
                      child: Text(
                        'Whats\'up?',
                        style: TextStyle(
                          color: AppConstants.whiteColor,
                          fontSize: AppConstants.font12,
                        ),
                      ),
                    ),
                    Bubble(
                      style: styleSomebody,
                      child: Text(
                        'I\'ve been having a problem with my computer.',
                        style: TextStyle(
                          fontSize: AppConstants.font12,
                        ),
                      ),
                    ),
                    Bubble(
                      style: styleSomebody,
                      margin: BubbleEdges.only(top: 2.0),
                      nip: BubbleNip.no,
                      child: Text(
                        'Can you help me?',
                        style: TextStyle(
                          fontSize: AppConstants.font12,
                        ),
                      ),
                    ),
                    Bubble(
                      style: styleMe,
                      child: Text(
                        'Ok',
                        style: TextStyle(
                          color: AppConstants.whiteColor,
                          fontSize: AppConstants.font12,
                        ),
                      ),
                    ),
                    Bubble(
                      style: styleMe,
                      nip: BubbleNip.no,
                      margin: BubbleEdges.only(top: 2.0),
                      child: Text(
                        'What\'s the problem?',
                        style: TextStyle(
                          color: AppConstants.whiteColor,
                          fontSize: AppConstants.font12,
                        ),
                      ),
                    ),
                    Bubble(
                      style: styleSomebody,
                      child: Text(
                        'Hi Jason. Sorry to bother you. I have a queston for you.',
                        style: TextStyle(
                          fontSize: AppConstants.font12,
                        ),
                      ),
                    ),
                    Bubble(
                      style: styleMe,
                      child: Text(
                        'Whats\'up?',
                        style: TextStyle(
                          color: AppConstants.whiteColor,
                          fontSize: AppConstants.font12,
                        ),
                      ),
                    ),
                    Bubble(
                      style: styleSomebody,
                      child: Text(
                        'I\'ve been having a problem with my computer.',
                        style: TextStyle(
                          fontSize: AppConstants.font12,
                        ),
                      ),
                    ),
                    Bubble(
                      style: styleSomebody,
                      margin: BubbleEdges.only(top: 2.0),
                      nip: BubbleNip.no,
                      child: Text(
                        'Can you help me?',
                        style: TextStyle(
                          fontSize: AppConstants.font12,
                        ),
                      ),
                    ),
                    Bubble(
                      style: styleMe,
                      child: Text(
                        'Ok',
                        style: TextStyle(
                          color: AppConstants.whiteColor,
                          fontSize: AppConstants.font12,
                        ),
                      ),
                    ),
                    Bubble(
                      style: styleMe,
                      nip: BubbleNip.no,
                      margin: BubbleEdges.only(top: 2.0),
                      child: Text(
                        'What\'s the problem?',
                        style: TextStyle(
                          color: AppConstants.whiteColor,
                          fontSize: AppConstants.font12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 8.0,
                      right: 8.0,
                      bottom: bottom + 10.0,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: AppConstants.buttonHeight,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.white38,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20.0,
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: intlDelegate.type_message,
                                        hintStyle: TextStyle(
                                          fontSize: AppConstants.font12,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                      onChanged: (val) {
                                        print(MediaQuery.of(context)
                                            .viewInsets
                                            .bottom);
                                      },
                                    ),
                                  ),
                                ),
                                IconButton(
                                  padding: EdgeInsets.all(0),
                                  splashRadius: 20.0,
                                  icon: Icon(
                                    FlutterIcons.attachment_ent,
                                    size: 19.0,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Container(
                          width: 45.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            color: AppConstants.primaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            FlutterIcons.send_fea,
                            size: 20.0,
                            color: AppConstants.whiteColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
