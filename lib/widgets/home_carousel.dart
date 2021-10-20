import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctor_finder/generated/l10n.dart';
import 'package:doctor_finder/utils/constants.dart';
import 'package:flutter/material.dart';

class HomeCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final S intlDelegate = S.of(context);

    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 240.0,
          viewportFraction: 1,
          autoPlay: true,
        ),
        items: [1, 2, 3].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/blue_bg.png",
                    ),
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  padding: EdgeInsets.only(
                    left: 25.0,
                    top: 20.0,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                intlDelegate.looking_doctor,
                                style: TextStyle(
                                  height: 1.5,
                                  color: AppConstants.whiteColor,
                                  fontWeight: AppConstants.boldFont,
                                  fontSize: AppConstants.font18,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                bottom: 20.0,
                              ),
                              decoration: BoxDecoration(
                                border: Border(
                                  left: BorderSide(
                                    color: AppConstants.greenColor,
                                    width: 5.0,
                                  ),
                                ),
                              ),
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: 10.0,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Dr Salina Zaman\n",
                                        style: TextStyle(
                                          fontWeight: AppConstants.boldFont,
                                          fontSize: AppConstants.font15,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "Medicine & Heart Specialist\n",
                                        style: TextStyle(
                                          height: 1.4,
                                          fontSize: AppConstants.font12,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "Good Health Clinic",
                                        style: TextStyle(
                                          height: 1.4,
                                          fontSize: AppConstants.font12,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment(0, 1),
                        child: Image.asset(
                          "assets/images/doctor.png",
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
