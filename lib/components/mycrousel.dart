import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyCarousel extends StatefulWidget {
  const MyCarousel({super.key});

  @override
  State<MyCarousel> createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  final List imageList = [
    {"id": 1, "image_path": 'assets/images/1.jpg'},
    {"id": 2, "image_path": 'assets/images/2.jpg'},
    {"id": 3, "image_path": 'assets/images/3.jpg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            InkWell(
              onTap: () {
                print(currentindex);
              },
              child: CarouselSlider(
                  items: imageList
                      .map((item) => Image.asset(
                            item['image_path'],
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ))
                      .toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      autoPlay: true,
                      aspectRatio: 2,
                      viewportFraction: .9,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentindex = index;
                        });
                      })),
            ),
            Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imageList.asMap().entries.map((entry) {
                    print(entry);
                    print(entry.key);
                    return GestureDetector(
                        onTap: () =>
                            carouselController..animateToPage(entry.key),
                        child: Container(
                          width: currentindex == entry.key ? 17 : 7,
                          height: 7.0,
                          margin: const EdgeInsets.symmetric(horizontal: 3.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentindex == entry.key
                                ? Colors.indigo
                                : Colors.white,
                          ),
                        ));
                  }).toList(),
                ))
          ],
        )
      ],
    );
  }
}
