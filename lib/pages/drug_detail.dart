import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/router.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:doctor_finder/widgets/drug_carousel.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DrugDetail extends StatefulWidget {
  @override
  _DrugDetailState createState() => _DrugDetailState();
}

class _DrugDetailState extends State<DrugDetail> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);
    final S intlDelegate = S.of(context);
    ThemeUtil.initScreenUtil(context);
    final List<String> images = [
      "assets/images/drug1xl.png",
      "assets/images/drug1xl.png",
      "assets/images/drug1xl.png",
      "assets/images/drug1xl.png",
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 300.0,
                width: double.infinity,
                color: ThemeUtil.getCardColor(dynamicTheme.data.brightness),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        splashColor: Colors.transparent,
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
                    Expanded(
                      child: DrugCarousel(
                        images: images,
                        onPageChanged: (index, reason) {
                          print(index);
                          setState(() {
                            _current = index;
                          });
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(images.length, (index) => index)
                          .toList()
                          .map((idx) {
                        print("Currrent idx is $idx");
                        return Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == idx
                                ? AppConstants.primaryColor
                                : Color.fromRGBO(0, 0, 0, 0.4),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
                child: Text(
                  "Cellgevity",
                  style: dynamicTheme.data.textTheme.bodyText2.copyWith(
                    fontSize: AppConstants.font16,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 5.0),
                child: Text(
                  "by Teegar's Store",
                  style: dynamicTheme.data.textTheme.caption.copyWith(),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "\$2.20",
                        style: dynamicTheme.data.textTheme.bodyText2.copyWith(
                          fontSize: AppConstants.font16,
                          fontWeight: AppConstants.boldFont,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15.0,
                              vertical: 9.0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: ThemeUtil.lightDarkColor(
                                  AppConstants.greyColor,
                                  AppConstants.whiteColor,
                                  dynamicTheme.data.brightness,
                                ),
                              ),
                            ),
                            child: Text(
                              "-",
                              style: dynamicTheme.data.textTheme.bodyText2
                                  .copyWith(
                                fontSize: AppConstants.font16,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            "1",
                            style:
                                dynamicTheme.data.textTheme.bodyText2.copyWith(
                              fontSize: AppConstants.font16,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15.0,
                              vertical: 9.0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: ThemeUtil.lightDarkColor(
                                  AppConstants.greyColor,
                                  AppConstants.whiteColor,
                                  dynamicTheme.data.brightness,
                                ),
                              ),
                            ),
                            child: Text(
                              "+",
                              style: dynamicTheme.data.textTheme.bodyText2
                                  .copyWith(
                                fontSize: AppConstants.font16,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Text(
                  "${intlDelegate.about}",
                  style: TextStyle(
                    fontSize: AppConstants.font15,
                    fontWeight: AppConstants.boldFont,
                    color: ThemeUtil.lightDarkColor(
                      AppConstants.quietBlack,
                      Colors.white,
                      dynamicTheme.data.brightness,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Text(
                  "Lorem ipsum dolor sit amet, consec tetur adipi scing elit, sed do eiusmod tempor incididunt, Lorem ipsum dolor sit amet, consec tetur adipi scing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet, consec tetur adipi scing elit, sed do eiusmod tempor incididunt.",
                  style: dynamicTheme.data.textTheme.caption.copyWith(
                    height: 1.7,
                    fontSize: AppConstants.font13,
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
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
                    AppRouter.router.navigateTo(
                      context,
                      "payment-page",
                      transition: TransitionType.inFromRight,
                      transitionDuration: Duration(milliseconds: 400),
                    );
                  },
                  child: Text(
                    intlDelegate.checkout,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: AppConstants.font13,
                      color: AppConstants.whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
