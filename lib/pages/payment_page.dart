import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/pages/payment_successful.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/router.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool _loading = false;
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
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
            Navigator.popUntil(context, (route) {
              if (route.settings.name == "home" ||
                  route.settings.name == "drug-home") {
                AppRouter.router.navigateTo(
                  context,
                  route.settings.name,
                  transition: TransitionType.fadeIn,
                  replace: true,
                );
                return true;
              }
              return false;
            });
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
          intlDelegate.make_payment,
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
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 40.0,
              ),
              Text(
                intlDelegate.payment_methods,
                style: TextStyle(
                  fontWeight: AppConstants.boldFont,
                  fontSize: AppConstants.font16,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 17.0,
                          horizontal: 20.0,
                        ),
                        border: OutlineInputBorder(),
                        labelText: intlDelegate.card_number,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                      ),
                    ),
                    SizedBox(height: 25.0),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 17.0,
                                horizontal: 20.0,
                              ),
                              border: OutlineInputBorder(),
                              labelText: intlDelegate.expiry_date,
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 17.0,
                                horizontal: 20.0,
                              ),
                              border: OutlineInputBorder(),
                              labelText: "CVV",
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 17.0,
                          horizontal: 20.0,
                        ),
                        border: OutlineInputBorder(),
                        labelText: intlDelegate.cardholder_name,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                      ),
                    ),
                    SizedBox(height: 15.0),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                intlDelegate.another_payment,
                textAlign: TextAlign.center,
                style: dynamicTheme.data.textTheme.caption.copyWith(
                  fontSize: AppConstants.font13,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  runAlignment: WrapAlignment.center,
                  children: [
                    Container(
                      width: 100.0,
                      height: AppConstants.buttonHeight,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: AppConstants.blackColor),
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(FlutterIcons.paypal_ent),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "Pay",
                              style: dynamicTheme.data.textTheme.bodyText2
                                  .copyWith(
                                fontSize: AppConstants.font13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25.0,
                    ),
                    Container(
                      width: 100.0,
                      height: AppConstants.buttonHeight,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                          side: BorderSide(color: AppConstants.blackColor),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(FlutterIcons.google_play_ent),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "Pay",
                              style: dynamicTheme.data.textTheme.bodyText2
                                  .copyWith(
                                fontSize: AppConstants.font13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25.0,
                    ),
                    Container(
                      width: 100.0,
                      height: AppConstants.buttonHeight,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                          side: BorderSide(color: AppConstants.blackColor),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(FlutterIcons.apple1_ant),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "Pay",
                              style: dynamicTheme.data.textTheme.bodyText2
                                  .copyWith(
                                fontSize: AppConstants.font13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      intlDelegate.total,
                      style: dynamicTheme.data.textTheme.bodyText2.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: AppConstants.font12,
                      ),
                    ),
                    Text(
                      "\$200.20",
                      style: dynamicTheme.data.textTheme.bodyText2.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: AppConstants.font12,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
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
                          child: PaymentSuccessful(),
                        ),
                      );
                    });
                  },
                  child: _loading
                      ? CupertinoActivityIndicator(
                          radius: 13.0,
                        )
                      : Text(
                          intlDelegate.checkout,
                          style: TextStyle(
                            color: AppConstants.whiteColor,
                            fontSize: AppConstants.font13,
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
