import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageList extends StatefulWidget {
  @override
  _MessageListState createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
  @override
  Widget build(BuildContext context) {
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);
    ThemeUtil.initScreenUtil(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: ThemeUtil.getCardColor(dynamicTheme.data.brightness),
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
          "Message",
          style: dynamicTheme.data.textTheme.headline6.copyWith(
            fontSize: AppConstants.font20,
            color: ThemeUtil.lightDarkColor(
              AppConstants.quietBlack,
              Colors.white,
              dynamicTheme.data.brightness,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(FlutterIcons.search_fea),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 20.0,
        ),
        child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Container(
                height: ScreenUtil().setHeight(42.0),
                width: ScreenUtil().setWidth(40.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14.0),
                  child: Image.asset(
                    "assets/images/doctor_message.png",
                  ),
                ),
              ),
              title: Text(
                "Dr. Malek Khan",
                style: dynamicTheme.data.textTheme.bodyText2.copyWith(
                  fontSize: AppConstants.font14,
                  fontWeight: AppConstants.boldFont,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  "It is a long established fact that a read and will be distracted lisece.",
                  style: dynamicTheme.data.textTheme.caption.copyWith(
                    fontSize: AppConstants.font13,
                  ),
                ),
              ),
              trailing: Text(
                "23:32",
                style: dynamicTheme.data.textTheme.caption.copyWith(
                  fontSize: AppConstants.font12,
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
          itemCount: 20,
        ),
      ),
    );
  }
}
