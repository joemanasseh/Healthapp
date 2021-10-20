import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/svg.dart';

class PaymentDetail extends StatefulWidget {
  @override
  _PaymentDetailState createState() => _PaymentDetailState();
}

class _PaymentDetailState extends State<PaymentDetail> {
  final List<Color> notificationColors = [
    Color.fromRGBO(81, 136, 253, 0.5),
    Color.fromRGBO(126, 81, 253, 0.5),
    Color.fromRGBO(253, 81, 81, 0.5),
  ];
  @override
  Widget build(BuildContext context) {
    final DynamicThemeState dynamicTheme = DynamicTheme.of(context);
    final S intlDelegate = S.of(context);
    ThemeUtil.initScreenUtil(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: ThemeUtil.getCardColor(dynamicTheme.data.brightness),
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
        centerTitle: true,
        title: Text(
          intlDelegate.payments,
          style: dynamicTheme.data.textTheme.headline6.copyWith(
            fontSize: AppConstants.font16,
            color: ThemeUtil.lightDarkColor(
              AppConstants.quietBlack,
              Colors.white,
              dynamicTheme.data.brightness,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 40.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                intlDelegate.your_cards,
                style: TextStyle(
                  fontWeight: AppConstants.boldFont,
                  fontSize: AppConstants.font16,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Container(
                    height: 240.0,
                    width: double.infinity,
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      gradient: LinearGradient(
                        begin: Alignment(-0.86, 0.09),
                        end: Alignment(1.4, 0.41),
                        colors: [
                          const Color(0xfff68749),
                          const Color(0xfffda271)
                        ],
                        stops: [0.0, 1.0],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              intlDelegate.credit_card,
                              style: dynamicTheme.data.textTheme.bodyText2
                                  .copyWith(
                                fontSize: AppConstants.font15,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            SvgPicture.asset(
                              "assets/svg/mastercard.svg",
                              width: 50.0,
                            )
                          ],
                        ),
                        Text(
                          "2536  3587  5300  5682",
                          textAlign: TextAlign.center,
                          style: dynamicTheme.data.textTheme.bodyText2.copyWith(
                            fontSize: AppConstants.font18,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  intlDelegate.card_holder.toUpperCase(),
                                  style: dynamicTheme.data.textTheme.caption
                                      .copyWith(
                                    color: Color(0xFFDEDBDB),
                                    fontSize: AppConstants.font12,
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  "Janni Kavin",
                                  style: dynamicTheme.data.textTheme.bodyText2
                                      .copyWith(
                                    fontSize: AppConstants.font14,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  intlDelegate.expires.toUpperCase(),
                                  style: dynamicTheme.data.textTheme.caption
                                      .copyWith(
                                    color: Color(0xFFDEDBDB),
                                    fontSize: AppConstants.font12,
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  "01/12",
                                  style: dynamicTheme.data.textTheme.bodyText2
                                      .copyWith(
                                    fontSize: AppConstants.font14,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "CVV",
                                  style: dynamicTheme.data.textTheme.caption
                                      .copyWith(
                                    fontSize: AppConstants.font12,
                                    color: Color(0xFFDEDBDB),
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  "•••",
                                  style: dynamicTheme.data.textTheme.bodyText2
                                      .copyWith(
                                    fontSize: AppConstants.font14,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    right: 20.0,
                    child: Container(
                      width: 124.0,
                      height: 133.0,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(62.0, 66.5)),
                        color: const Color(0x12ffffff),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100.0,
                    child: Container(
                      width: 124.0,
                      height: 133.0,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(62.0, 66.5)),
                        color: const Color(0x12ffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                intlDelegate.transactions,
                style: TextStyle(
                  fontWeight: AppConstants.boldFont,
                  fontSize: AppConstants.font16,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Color.fromRGBO(255, 202, 49, 1),
                        child: Center(
                          child: Icon(
                            FlutterIcons.capsules_faw5s,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Drug Purchase",
                              style: dynamicTheme.data.textTheme.bodyText2
                                  .copyWith(
                                fontWeight: AppConstants.boldFont,
                                fontSize: AppConstants.font13,
                              ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "26 June 2020, 01:33 PM",
                              style:
                                  dynamicTheme.data.textTheme.caption.copyWith(
                                fontSize: AppConstants.font12,
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        "\$220.0",
                        style: dynamicTheme.data.textTheme.caption.copyWith(
                          fontSize: AppConstants.font12,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Color.fromRGBO(255, 146, 172, 1),
                        child: Center(
                          child: Icon(
                            FlutterIcons.stethoscope_faw,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Doctor's Fee",
                              style: dynamicTheme.data.textTheme.bodyText2
                                  .copyWith(
                                fontWeight: AppConstants.boldFont,
                                fontSize: AppConstants.font13,
                              ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "26 June 2020, 01:33 PM",
                              style:
                                  dynamicTheme.data.textTheme.caption.copyWith(
                                fontSize: AppConstants.font12,
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        "\$220.0",
                        style: dynamicTheme.data.textTheme.caption.copyWith(
                          fontSize: AppConstants.font12,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Color.fromRGBO(73, 235, 194, 1),
                        child: Center(
                          child: Icon(
                            FlutterIcons.stethoscope_faw,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "App Subscription Fee",
                              style: dynamicTheme.data.textTheme.bodyText2
                                  .copyWith(
                                fontWeight: AppConstants.boldFont,
                                fontSize: AppConstants.font13,
                              ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "26 June 2020, 01:33 PM",
                              style:
                                  dynamicTheme.data.textTheme.caption.copyWith(
                                fontSize: AppConstants.font12,
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        "\$220.0",
                        style: dynamicTheme.data.textTheme.caption.copyWith(
                          fontSize: AppConstants.font12,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Color.fromRGBO(71, 70, 197, 1),
                        child: Center(
                          child: Icon(
                            FlutterIcons.stethoscope_faw,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Drug Purchase",
                              style: dynamicTheme.data.textTheme.bodyText2
                                  .copyWith(
                                fontWeight: AppConstants.boldFont,
                                fontSize: AppConstants.font13,
                              ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "26 June 2020, 01:33 PM",
                              style:
                                  dynamicTheme.data.textTheme.caption.copyWith(
                                fontSize: AppConstants.font12,
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        "\$220.0",
                        style: dynamicTheme.data.textTheme.caption.copyWith(
                          fontSize: AppConstants.font12,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
            // Container(
            //   padding: EdgeInsets.symmetric(horizontal: 16.0),
            //   child: ListView.builder(
            //     physics: NeverScrollableScrollPhysics(),
            //     shrinkWrap: true,
            //     itemCount: 10,
            //     itemBuilder: (BuildContext context, int index) {
            //       return Container(
            //         height: ScreenUtil().setHeight(120.0),
            //         width: double.infinity,
            //         margin: EdgeInsets.only(bottom: 10.0),
            //         padding:
            //             EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(12.0),
            //           color:
            //               ThemeUtil.getCardColor(dynamicTheme.data.brightness),
            //         ),
            //         child: Row(
            //           children: [
            //             FractionallySizedBox(
            //               heightFactor: 1,
            //               child: Container(
            //                 decoration: BoxDecoration(
            //                   borderRadius: BorderRadius.circular(12.0),
            //                   color: notificationColors[1],
            //                 ),
            //                 child: Icon(FlutterIcons.md_medical_ion),
            //                 width: 120.0,
            //               ),
            //             ),
            //             SizedBox(
            //               width: 20.0,
            //             ),
            //             Expanded(
            //               child: Column(
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   Text(
            //                     "Drugs Purchase",
            //                     style: dynamicTheme.data.textTheme.bodyText2
            //                         .copyWith(
            //                       fontWeight: FontWeight.bold,
            //                     ),
            //                   ),
            //                   SizedBox(height: 5.0),
            //                   Text(
            //                     "11 Oct 2020",
            //                     style: dynamicTheme.data.textTheme.caption
            //                         .copyWith(
            //                       fontSize: AppConstants.font12,
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //             Text(
            //               "\$120.20",
            //               style: dynamicTheme.data.textTheme.caption.copyWith(
            //                 fontSize: AppConstants.font12,
            //               ),
            //             ),
            //           ],
            //         ),
            //       );
            //     },
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
