import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mtstreamapp/widgets/color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Popular extends StatefulWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  State<Popular> createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  final controller = CarouselController();
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      width: 380,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: colors.transparent),
                      child: CarouselSlider.builder(
                        options: CarouselOptions(
                          height: 180,
                          initialPage: 0,
                          autoPlay: true,
                          viewportFraction: 1,
                          enlargeCenterPage: true,
                          autoPlayInterval: Duration(seconds: 2),
                          onPageChanged: (index, reason) =>
                              setState(() => activeIndex = index),
                        ),
                        itemCount: 5,
                        itemBuilder: (context, index, realIndex) {
                          return buildImage(index);
                        },
                      ),
                    ),
                    buildIndicator(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("assets/crown1.png"),
                    Image.asset("assets/PK.png"),
                    Image.asset("assets/gift.png"),
                    Image.asset("assets/calender.png"),
                    Image.asset("assets/ring.png"),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Records'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('PK'),
                  ),
                  Text('Lucky Draw'),
                  Text('Event'),
                  Text('Lucky Paisa')
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: Row(
                  children: [
                    Image.asset("assets/icon.png"),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 10),
                      child: Text(
                        "Editor's Pick",
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 75, 100, 212),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 600,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) => Card(
                    margin: EdgeInsets.zero,
                    color: colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/1stream.jpg'),
                                  fit: BoxFit.fill)),
                          child: Transform.translate(
                            offset: Offset(40, -70),
                            child: Container(
                              // width: 10,
                              // height: 30,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 80),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: colors.pinkaccent),
                              child: Row(
                                children: [
                                  Image.asset("assets/crown1.png"),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      'Super Star',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 160),
                          child: Text(
                            "User name",
                            style:
                                TextStyle(fontSize: 20, color: colors.mywhite),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: 40,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: colors.mywhite24,
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.equalizer),
                                Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: Text('906'),
                                )
                              ],
                            ),
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
      ),
    );
  }

  Widget buildImage(int index) => Container(
        height: 200,
        width: 380,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        // margin: EdgeInsets.symmetric(horizontal: 20),
        // color: Colors.grey,
        child: Image(
          image: AssetImage('assets/4stream.jpg'),
          // fit: BoxFit.fill,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: 6,
        onDotClicked: animatetoSlide,
        effect: JumpingDotEffect(
          dotWidth: 10,
          dotHeight: 10,
          activeDotColor: colors.pinkaccent,
          dotColor: colors.mygrey,
        ),
      );

  void animatetoSlide(int index) => controller.animateToPage(index);

  void next() => controller.nextPage(duration: Duration(milliseconds: 100));

  void previous() =>
      controller.previousPage(duration: Duration(milliseconds: 100));
}

  // ListView.builder(
          //   scrollDirection: Axis.horizontal,
          //   itemBuilder: (BuildContext context, int index) {
          //     return Container(
          //       height: 300,
          //       width: 200,
          //       margin: const EdgeInsets.only(left: 10),
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(20),
          //           image: DecorationImage(
          //             image: AssetImage('assets/PUP-21.jpg'),
          //           )),
          //     );
          //   },
          //   itemCount: 3,
          // )