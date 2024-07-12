import 'package:apple/screens/home/homepage/widgets/home_row.dart';
import 'package:apple/screens/home/homepage/widgets/home_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Container(
        width: size.width * 0.6,
        height: size.height,
        color: Colors.grey.shade700,
        child: const SingleChildScrollView(
          child: Column(
            children: [FaIcon(FontAwesomeIcons.apple)],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SafeArea(
            child: Column(
          children: [
            const CustomAppBar(),
            const SizedBox(
              height: 10,
            ),
            const HomeSlider(),
            const SizedBox(
              height: 10,
            ),
            const HomeRow(),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Top Categories',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Divider(
              color: Colors.grey.shade300,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  CategoryView(
                    image: 'assets/images/airpods.png',
                    name: 'Air Pods',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryView(
                    image: 'assets/images/iphone.png',
                    name: 'I Phones',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryView(
                    image: 'assets/images/ipad.png',
                    name: 'I Pad',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryView(
                    image: 'assets/images/mac.png',
                    name: 'MacBook',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryView(
                    image: 'assets/images/watch.png',
                    name: 'I Watch',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Latest Products',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Divider(
              color: Colors.grey.shade300,
            ),
            const SizedBox(
              height: 10,
            ),
            MediaQuery.removePadding(
              context: context,
              child: GridView.builder(

                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 2, mainAxisSpacing: 2, crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(20),
                      
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Image.network('https://picsum.photos/200'),
                        )
                      ],
                    ),
                  );
                  // return SizedBox(
                  //   width: 160,
                  //   height: 200,
                  //   child: Stack(
                  //     children: [
                  //       Align(
                  //         alignment: Alignment.bottomCenter,
                  //         child: Container(
                  //           width: 160,
                  //           height: 100,
                  //           decoration: BoxDecoration(
                  //               color: Colors.grey.shade800,
                  //               borderRadius: BorderRadius.circular(20)),
                  //         ),
                  //       ),
                  // Align(
                  //   alignment: Alignment.center,
                  //   child: Image.network(,
                  // ),
                  // Align(
                  //   alignment: Alignment.bottomCenter,
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(8),
                  //     child: Text(
                  //       name,
                  //       style: const TextStyle(
                  //           color: Colors.white,
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 18),
                  //     ),
                  //   ),
                  // )
                  //     ],
                  //   ),
                  // );
                },
              ),
            )
          ],
        )),
      ),
    );
  }
}

class CategoryView extends StatelessWidget {
  const CategoryView({
    super.key,
    required this.name,
    required this.image,
  });
  final String name;
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 200,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 160,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(image),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                name,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
