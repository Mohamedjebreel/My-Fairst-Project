import 'package:finalismail/modules/log_in_page/log_in_page.dart';
import 'package:finalismail/modules/welcome_screen/welcome_screen.dart';
import 'package:finalismail/shared/components/components.dart';
import 'package:finalismail/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_count_down.dart';

class Subscriptions extends StatefulWidget {
  @override
  State<Subscriptions> createState() => _SubscriptionsState();
}

class _SubscriptionsState extends State<Subscriptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,

      body:SafeArea(
        top: false,
        bottom: false,
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              height: 88,
              width: double.infinity,
              color: orangColor,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text("Subscriptions",style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),),
              ),

            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: 10,left: 10),
                  child: Container(
                    height: 146,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: boxColor,
                        borderRadius: BorderRadius.circular(10)

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            CircleAvatar(
                              radius: 30.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: const AssetImage('assets/images/Thumb2.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),

                              ),


                            ),
                            SizedBox(width: 15,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text("Ultimate Power Gym",style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),),
                           Image.asset('assets/images/favourite-31.png'),

                              ],),

                          ]),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Subscription Date",style: TextStyle(
                                    color: Color.fromRGBO(100, 103, 129, 1.0),
                                    fontSize: 13,
                                  ),),
                                  Row(children: [
                                    Text("25 June 2018   ",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),),
                                    Text(" 25 July 2018",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),),
                                  ],)
                                ],
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text("Plan",style: TextStyle(
                                    color: Color.fromRGBO(100, 103, 129, 1.0),
                                    fontSize: 13,
                                  ),),
                                  Text("\$99 Monthly ",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),),
                                ],
                              ),

                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                separatorBuilder: (context, index) =>
                    SizedBox(height: 12,),
                itemCount:10,
              ),
            ),

          ],
        ),

      ),
    );
  }
}
