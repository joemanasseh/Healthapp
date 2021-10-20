import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctor_finder/utils/router.dart';
import 'package:doctor_finder/widgets/doctor_card.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class DoctorsCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25.0),
      child: CarouselSlider(
        options: CarouselOptions(
          // height: ScreenUtil().setHeight(230.0),
          height: 240.0,
          viewportFraction: 1,
          autoPlay: true,
        ),
        items: [1, 2, 3].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () {
                  AppRouter.router.navigateTo(
                    context,
                    "doctor-profile",
                    transition: TransitionType.fadeIn,
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: DoctorCard(),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
