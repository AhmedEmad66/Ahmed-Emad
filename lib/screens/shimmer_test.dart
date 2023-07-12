import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:test_project/screens/carousel_slider_test.dart';

class ShimmerTest extends StatelessWidget {
  const ShimmerTest({super.key});
  static String id = "ShimmerTest";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const ShimmerLoadingAnimation(),
                const ShimmerLoadingAnimation(),
                const ShimmerLoadingAnimation(),
                const ShimmerLoadingAnimation(),
                const ShimmerLoadingAnimation(),
                const ShimmerLoadingAnimation(),
                const ShimmerLoadingAnimation(),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, CarouselSliderTest.id);
                  },
                  child: const Text(
                    "Navigate to Carousel Slider",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 6, 165, 170),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ShimmerLoadingAnimation extends StatelessWidget {
  const ShimmerLoadingAnimation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Shimmer.fromColors(
            baseColor: Colors.grey.withOpacity(0.4),
            highlightColor: Colors.grey.withOpacity(0.1),
            child: Container(
              width: 150,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.4),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Shimmer.fromColors(
                  baseColor: Colors.grey.withOpacity(0.4),
                  highlightColor: Colors.grey.withOpacity(0.1),
                  child: Container(
                    width: 80,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Shimmer.fromColors(
                  baseColor: Colors.grey.withOpacity(0.4),
                  highlightColor: Colors.grey.withOpacity(0.1),
                  child: Container(
                    width: 150,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Shimmer.fromColors(
                  baseColor: Colors.grey.withOpacity(0.4),
                  highlightColor: Colors.grey.withOpacity(0.1),
                  child: Container(
                    width: 150,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Shimmer.fromColors(
                  baseColor: Colors.grey.withOpacity(0.4),
                  highlightColor: Colors.grey.withOpacity(0.1),
                  child: Container(
                    width: 150,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Shimmer.fromColors(
                      baseColor: Colors.grey.withOpacity(0.4),
                      highlightColor: Colors.grey.withOpacity(0.1),
                      child: Container(
                        width: 70,
                        height: 15,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Shimmer.fromColors(
                      baseColor: Colors.grey.withOpacity(0.4),
                      highlightColor: Colors.grey.withOpacity(0.1),
                      child: Container(
                        width: 70,
                        height: 15,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
