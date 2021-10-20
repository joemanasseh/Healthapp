import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            child: PageView(
              controller: _controller,
              children: [
                _slideTemplate(
                    title: S.of(context).welcome_text,
                    subtitle: S.of(context).welcome_subtitle,
                    lottieAsset: "assets/anims/doctors.json"),
                _slideTemplate(
                    title: S.of(context).buy_drug_online,
                    subtitle: S.of(context).buy_drug_subtitle,
                    lottieAsset: "assets/anims/capsule.json"),
                _slideTemplate(
                    title: S.of(context).book_appointment,
                    subtitle: S.of(context).book_appointment_subtitle,
                    lottieAsset: "assets/anims/appointment.json"),
                _slideTemplate(
                  title: S.of(context).chat_with_specialists,
                  subtitle: S.of(context).chat_specialist_subtitle,
                  lottieAsset: "assets/anims/chat.json",
                ),
              ],
            ),
          ),
        ),
        SmoothPageIndicator(
          count: 4,
          controller: _controller,
          effect: WormEffect(
            dotWidth: 10.0,
            dotHeight: 10.0,
            dotColor: Colors.grey[300],
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
      ],
    );
  }

  Widget _slideTemplate({String title, String subtitle, String lottieAsset}) {
    final Size _size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      constraints: BoxConstraints(maxWidth: _size.width * 0.8),
      child: Column(
        children: [
          Expanded(
            child: Lottie.asset(lottieAsset),
          ),
          Text(
            title,
            style: DynamicTheme.of(context).data.textTheme.headline6.copyWith(
                  fontSize: AppConstants.normalFontSize2x,
                  fontWeight: AppConstants.boldFont,
                ),
          ),
          SizedBox(height: 5.0),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: DynamicTheme.of(context).data.textTheme.caption.copyWith(
                  height: 1.5,
                  fontSize: AppConstants.smallFontSize,
                ),
          ),
          SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );
  }
}
