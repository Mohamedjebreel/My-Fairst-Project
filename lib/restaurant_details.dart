import 'package:finalismail/modules/log_in_page/log_in_page.dart';
import 'package:finalismail/modules/welcome_screen/welcome_screen.dart';
import 'package:finalismail/shared/components/components.dart';
import 'package:finalismail/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_count_down.dart';

class RestaurantDetails extends StatefulWidget {
  @override
  State<RestaurantDetails> createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,

      body:SafeArea(
        top: false,
        bottom: false,
        child:  SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
              image: DecorationImage(
              image: const AssetImage('assets/images/Rectangle 10.png'),
    fit: BoxFit.fill,
    ),

      ),
    ),
              Container(
                height:250 ,
                width: double.infinity,
                color: boxColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  SizedBox(height: 20,),
                  Image.asset("assets/images/Oval 5.png"),
                  SizedBox(height: 12,),
                  Text("Protein Bar",style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),),
                  SizedBox(height: 12,),
                  Image.asset("assets/images/favourite-31.png"),
                  SizedBox(height: 12,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Text("00965000000",style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(119, 122, 145, 1.0),
                    ),),
                    SizedBox(width: 30,),
                    Text("Al Muruj, Riyadh",style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(119, 122, 145, 1.0),
                    ),),


                  ]),
                  SizedBox(height: 12,),

                  Text("There are many variations of passages of Lorem \n                           Ipsum available.",style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(119, 122, 145, 1.0),

                  ),),


                ]),
              ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text("Restaurant Services",style: TextStyle(
                          color: Colors.white,
                          fontSize: 15

                        ),),
                        const SizedBox(height: 20,),
                        Container(
                          width: double.infinity,
                          height: 70,
                          decoration: BoxDecoration(
                            color: boxColor,
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0,top: 10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Text("Weight Loss",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16

                              ),),
                                  SizedBox(height: 5,),
                                  Text("Muscle your way towards confidence.",style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromRGBO(119, 122, 145, 1.0),

                                  ),),
                            ]),
                          ),
                        ),
                        const SizedBox(height: 15,),
                        Container(
                          width: double.infinity,
                          height: 70,
                          decoration: BoxDecoration(
                              color: boxColor,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0,top: 10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Build Muscle",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16

                                  ),),
                                  SizedBox(height: 5,),
                                  Text("Muscle your way towards confidence.",style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromRGBO(119, 122, 145, 1.0),

                                  ),),
                                ]),
                          ),
                        ),
                        const SizedBox(height: 15,),
                        Container(
                          width: double.infinity,
                          height: 70,
                          decoration: BoxDecoration(
                              color: boxColor,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0,top: 10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Increase Energy",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16

                                  ),),
                                  SizedBox(height: 5,),
                                  Text("Muscle your way towards confidence.",style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromRGBO(119, 122, 145, 1.0),

                                  ),),
                                ]),
                          ),
                        ),
                        const SizedBox(height: 15,),
                        Container(
                          width: double.infinity,
                          height: 70,
                          decoration: BoxDecoration(
                              color: boxColor,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0,top: 10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Dry Muscles",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16

                                  ),),
                                  SizedBox(height: 5,),
                                  Text("Muscle your way towards confidence.",style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromRGBO(119, 122, 145, 1.0),

                                  ),),
                                ]),
                          ),
                        ),

                      ],
                    ),
                  ),


    ],
          ),
        ),
      ),
    );
  }
}
