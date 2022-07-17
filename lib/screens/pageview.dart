import 'package:flutter/material.dart';
import 'package:hackathon/const.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(),
    );
  }
}

class Pageview extends StatefulWidget {
  const Pageview({Key? key}) : super(key: key);

  @override
  State<Pageview> createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  @override
  final PageController controller = PageController();
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          PageView(
            controller: controller,
            children: <Widget>[
              Stack(
                children: [
                  Pages(
                    img: "images/page1.png",
                    child: Container(
                      padding: EdgeInsets.all(9.0),
                      height: 50.0,
                      width: size.width * 0.9,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "no",
                            style: TextStyle(color: Colors.green, fontSize: 30),
                          ),
                          const Text(
                            "1",
                            style: TextStyle(color: Colors.green, fontSize: 45),
                          ),
                          Column(
                            children: const [
                              Text(
                                'Featured',
                                style: TextStyle(color: Colors.green),

                              )
                            ],
                          ),
                          TextButton(onPressed: () {}, child: Text("go shopping"))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Pages(
                    child: Container(
                      padding: EdgeInsets.all(9.0),
                      height: 50.0,
                      width: size.width * 0.9,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [],
                      ),
                    ),
                    img: "images/page2.png",
                  ),
                ],
              ),
              Stack(
                children: [
                  Pages(
                    img: "images/page3.png",
                    child: Container(
                      padding: EdgeInsets.all(9.0),
                      height: 50.0,
                      width: size.width * 0.9,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text.rich(
                            TextSpan(
                              text: "No",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              children: [
                                TextSpan(
                                  text: "1",
                                  style: TextStyle(
                                      fontSize: 35, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const ExpandingDotsEffect(
                  activeDotColor: primarycolor,
                  dotHeight: 8,
                  dotWidth: 8,
                  dotColor: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class Pages extends StatefulWidget {
  Pages({required this.img, required this.child});

  final String img;
  final child;

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  @override
  final PageController controller = PageController();

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              widget.img,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Spacer(),
                Image(
                  height: 40.0,
                  width: 40.0,
                  image: AssetImage(
                    "images/Vector.png",
                  ),
                ),
                Spacer(),
              ],
            ),
            const SizedBox(
              height: 290,
            ),
            widget.child,
          ],
        ),
      ),
    );
  }
}

//  Text.rich(
//                             TextSpan(
//                               text: "No",
//                               style:
//                                   TextStyle(fontSize: 35, color: Colors.white),
//                               children: [
//                                 TextSpan(
//                                   text: "1",
//                                   style: TextStyle(
//                                       fontSize: 35, color: Colors.white),
//                                 ),
//                               ],
//                             ),
//                           ),
