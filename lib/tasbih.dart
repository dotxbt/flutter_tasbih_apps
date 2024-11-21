import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TasbihPage extends StatelessWidget {
  const TasbihPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: 8,
                color: Colors.amber,
              ),
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              scrollDirection: Axis.vertical,
              pageSnapping: true,
              height: MediaQuery.of(context).size.height,
              viewportFraction: 0.3,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: true,
              autoPlay: false,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 1000),
              autoPlayCurve: Curves.easeInOut,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.zoom,
              enlargeFactor: 0.2,
              onPageChanged: (page, _) {},
            ),
            items: List.generate(100, (value) => "${value + 1}").map((cdata) {
              return Builder(
                builder: (BuildContext context) {
                  return AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.width * 0.8,
                      width: MediaQuery.of(context).size.width * 0.8,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset("lib/assets/bulir7.png"),
                          Text(
                            cdata,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 99,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.black,
                  Colors.black.withOpacity(0.5),
                  Colors.transparent,
                ])),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      end: Alignment.topCenter,
                      begin: Alignment.bottomCenter,
                      colors: [
                    Colors.black,
                    Colors.black.withOpacity(0.5),
                    Colors.transparent,
                  ])),
            ),
          ),
        ],
      )),
    );
  }
}
