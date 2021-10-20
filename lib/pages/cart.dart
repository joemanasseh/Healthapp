import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:doctor_finder/utils/theme_helper.dart';
import 'package:doctor_finder/widgets/cart_empty.dart';
import 'package:doctor_finder/widgets/cart_list.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool _cartEmpty = true;
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
          intlDelegate.cart,
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
          constraints: BoxConstraints(
            minHeight: _size.height - kToolbarHeight - 65.0,
          ),
          child: !_cartEmpty ? CartList() : CartEmpty(),
        ),
      ),
    );
  }
}
