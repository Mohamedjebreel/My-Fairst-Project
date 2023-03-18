import 'package:carousel_slider/carousel_slider.dart';
import 'package:finalismail/modules/subscriptions.dart';
import 'package:finalismail/restaurant_details.dart';
import 'package:finalismail/shared/components/components.dart';
import 'package:finalismail/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 307,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(120),
                  bottomRight: Radius.circular(120),
                ),
                color: boxColor,
              ),
            ),
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(120),
                  bottomRight: Radius.circular(120),
                ),
                color: orangColor,
              ),
            ),
            Positioned(
                top: 40,
                right: MediaQuery.of(context).size.height * .22,
                child: Image.asset("assets/images/Logo2.png")),
            Positioned(
                top: 40,
                right: MediaQuery.of(context).size.height * .01,
                child: Image.asset("assets/images/Right Icon.png")),
            Positioned(
              top: 90,
              right: MediaQuery.of(context).size.height * .26,
              child: Column(
                children: [
                  Text(
                    "Good Morning",
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Tuesday, 15 June 2018",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 93,
              right: MediaQuery.of(context).size.height * .034,
              child: Text(
                "36º",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 115),
              child: CarouselSlider(
                //هاد من مكتبة
                items: [
                  Image.asset("assets/images/Card Copy.png"),
                  Image.asset("assets/images/Card.png"),
                  Image.asset("assets/images/Card Copy 2.png"),
                ],

                options: CarouselOptions(
                  height: 200,
                  //viewportFraction الرينج تاعو من 0.1 ل  1
                  viewportFraction: 1.0,
                  //يعني ما تعرض غير صورة وحدة بلمرة الوحدة ممكن اشيلها يحطلي الصورة التانية عليمين والي قبلها علشمال
                  enlargeCenterPage: false,
                  initialPage: 0,
                  //صفحة البداية
                  enableInfiniteScroll: true,
                  //يعني يضلو يلف حوالين نفسو
                  reverse: false,
                  //يعني بيضلو ماشي بتجاه واحد لمن اعطي فولس بقفش
                  autoPlay: true,
                  //تشغيل تلقائي
                  autoPlayInterval: Duration(seconds: 3),
                  //مدة القلبة
                  autoPlayAnimationDuration: Duration(seconds: 1),
                  //الانميشن قديش مدتو عند التقليب
                  autoPlayCurve: Curves.fastOutSlowIn,
                  //شكل التقليب الي هنستخدمو
                  scrollDirection: Axis.horizontal, //اتجاه التقليب او الحركة
                  // onPageChanged:(index ,reson){  //هاي عشان لو عملنا متغير عن طريقه بنعطي رقم الصورة لي احنا بيها ومن خلالها لو بدي احط طبب تحت بتحكم بيهن
                  //    pageId=index;
                  // }
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20),
          child: Row(
            children: const [
              Text(
                "01:34 ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                "hr",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Text(
                "8793 ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                "cal",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 80,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      navigateTo(context,Subscriptions());
                    });
                  },
                  child: Container(
                    width: 164,
                    height: 88,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: boxColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, left: 15),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/dumbbells.png"),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Gyms",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            )
                          ]),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                  width: 164,
                  height: 88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: boxColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/business-contact-85.png"),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Trainers",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          )
                        ]),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      navigateTo(context,RestaurantDetails());
                    });
                  },
                  child: Container(
                    width: 164,
                    height: 88,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: boxColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, left: 15),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/cutlery.png"),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Heath Restaurant",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            )
                          ]),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                  width: 164,
                  height: 88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: boxColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/shop.png"),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "e-Commerce",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          )
                        ]),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
