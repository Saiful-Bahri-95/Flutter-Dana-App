import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dana_app/utils/assets_locations.dart';

class ImageLoopSliderWidget extends StatefulWidget {
  const ImageLoopSliderWidget({super.key});

  @override
  State<ImageLoopSliderWidget> createState() => _ImageLoopSliderWidgetState();
}

class _ImageLoopSliderWidgetState extends State<ImageLoopSliderWidget> {
  List<String> imageName = [
    'bayar_tagihan',
    'beli_voucher',
    'cobain_semua',
    'danamon',
    'emas',
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imageName.length,
      itemBuilder: (contex, index, realIndex) {
        final name = imageName[index];
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.only(top: 10, left: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetsLocations.imageLocation(name),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: 162,
        viewportFraction: 0.81,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayCurve: Curves.easeInOutCirc,
        initialPage: 2,
      ),
    );
  }
}
