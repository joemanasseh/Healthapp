import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DrugCarousel extends StatelessWidget {
  final List<String> images;
  final Function onPageChanged;
  DrugCarousel({@required this.images, @required this.onPageChanged});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          height: 290.0,
          viewportFraction: 1,
          autoPlay: true,
          onPageChanged: onPageChanged,
        ),
        items: images.map((image) {
          return Builder(
            builder: (BuildContext context) {
              return Image.asset(image);
            },
          );
        }).toList(),
      ),
    );
  }
}
