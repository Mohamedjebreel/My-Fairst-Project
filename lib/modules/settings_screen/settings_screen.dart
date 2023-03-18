
import 'package:finalismail/shared/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SettingsScreen extends StatefulWidget {
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {

        return SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: orangColor,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(40) ,bottomLeft:  Radius.circular(40)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment:MainAxisAlignment.center,

                    children: [
                  Text("Settings",style: TextStyle(color: Colors.white,fontSize: 20),),
                      SizedBox(height: 35,),
                      Row(        mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        CircleAvatar(
                          radius: 30.0,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: const AssetImage('assets/images/is.PNG'),

                                fit: BoxFit.fill,
                          ),
                            ),

                          ),


                        ),
                        SizedBox(width: 15,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            Text("Ismail nofal",style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),),
                            SizedBox(height: 4,),
                            Text("Palestine, Gaza",style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,

                            ),),

                          ],),
                        SizedBox(width: 90,),
                        Image.asset('assets/images/preferences-circle.png'),

                      ])
                ]),

              ),
              Padding(
                padding: const EdgeInsets.only(right: 15,left: 15,top:15 ),
                child: Row(children: [
                  Container(
                    height: 32,
                    width: 32,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:   Image.asset('assets/images/Icon.png') ,
                  ),
                  SizedBox(width: 8,),
                  Text("About You",style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                  ),),
                  Spacer(),
                  Image.asset('assets/images/tail-right.png')
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15,left: 15,top:15 ),
                child: Row(children: [
                  Container(
                    height: 32,
                    width: 32,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:   Image.asset('assets/images/Messages Icon.png') ,
                  ),
                  SizedBox(width: 8,),
                  Text("Email",style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                  ),),
                  Spacer(),
                  Text("abdawas@gmail.com",style: TextStyle(
                      color:Color.fromRGBO(119, 122, 145, 1.0),
                      fontSize: 13
                  ),),
                  SizedBox(width: 12,),
                  Image.asset('assets/images/tail-right.png')
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15,left: 15,top:15 ),
                child: Row(children: [
                  Container(
                    height: 32,
                    width: 32,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:   Image.asset('assets/images/phone.png') ,
                  ),
                  SizedBox(width: 8,),
                  Text("Phone",style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                  ),),
                  Spacer(),
                  Text("Phone",style: TextStyle(
                      color:Color.fromRGBO(119, 122, 145, 1.0),
                      fontSize: 13
                  ),),
                  SizedBox(width: 12,),
                  Image.asset('assets/images/tail-right.png')
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15,left: 15,top:15 ),
                child: Row(children: [
                  Container(
                    height: 32,
                    width: 32,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:   Image.asset('assets/images/lock-circle.png') ,
                  ),
                  SizedBox(width: 8,),
                  Text("Password",style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                  ),),
                  Spacer(),
                  Image.asset('assets/images/tail-right.png')
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15,left: 15,top:15 ),
                child: Row(children: [
                  Container(
                    height: 32,
                    width: 32,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:   Image.asset('assets/images/world.png') ,
                  ),
                  SizedBox(width: 8,),
                  Text("Country",style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                  ),),
                  Spacer(),
                  Text("Saudi Arabia",style: TextStyle(
                      color:Color.fromRGBO(119, 122, 145, 1.0),
                      fontSize: 13
                  ),),
                  SizedBox(width: 12,),
                  Image.asset('assets/images/tail-right.png')
                ],),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(right: 15,left: 15,top:15 ),
                child: Row(children: [
                  Container(
                    height: 32,
                    width: 32,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:   Image.asset('assets/images/globe.png') ,
                  ),
                  SizedBox(width: 8,),
                  Text("Language",style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                  ),),
                  Spacer(),
                  Text("English",style: TextStyle(
                      color:Color.fromRGBO(119, 122, 145, 1.0),
                      fontSize: 13
                  ),),
                  SizedBox(width: 12,),
                  Image.asset('assets/images/tail-right.png')
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15,left: 15,top:15 ),
                child: Row(children: [
                  Container(
                    height: 32,
                    width: 32,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:   Image.asset('assets/images/Shape.png') ,
                  ),
                  SizedBox(width: 8,),
                  Text("Notifications",style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                  ),),
                  Spacer(),
                  Text("On",style: TextStyle(
                      color:Color.fromRGBO(119, 122, 145, 1.0),
                      fontSize: 13
                  ),),
                  SizedBox(width: 12,),
                  Image.asset('assets/images/tail-right.png')
                ],),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(right: 15,left: 15,top:15 ),
                child: Row(children: [
                  Container(
                    height: 32,
                    width: 32,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:   Image.asset('assets/images/eye-17.png') ,
                  ),
                  SizedBox(width: 8,),
                  Text("Privacy Policy",style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                  ),),
                  Spacer(),
                  Image.asset('assets/images/tail-right.png')
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15,left: 15,top:15 ),
                child: Row(children: [
                  Container(
                    height: 32,
                    width: 32,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:   Image.asset('assets/images/paper.png') ,
                  ),
                  SizedBox(width: 8,),
                  Text("Terms of Use",style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                  ),),
                  Spacer(),
                  Image.asset('assets/images/tail-right.png')
                ],),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(right: 15,left: 15,top:15 ),
                child: Row(children: [
                  Container(
                    height: 32,
                    width: 32,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: orangColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:   Image.asset('assets/images/logout.png') ,
                  ),
                  SizedBox(width: 8,),
                  Text("Sign Out",style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                  ),),

                ],),
              ),


            ],
          ),
        );

  }
}