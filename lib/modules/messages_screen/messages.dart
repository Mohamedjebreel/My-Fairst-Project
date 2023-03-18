
import 'package:finalismail/shared/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          height: 88,
          width: double.infinity,
          color: orangColor,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text("Messages",style: TextStyle(
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
                height: 80,
                width: 343,
                decoration: BoxDecoration(
                  color: boxColor,
                  borderRadius: BorderRadius.circular(10)

                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(children: [
                    CircleAvatar(
                      radius: 30.0,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('assets/images/Thumb.png'),
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

                      Text("Nikolai Ostrovoi",style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),),
                      Text("Ok but I must explain to you how all…",style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(119, 122, 145, 1.0),

                      ),),

                    ],)

                  ]),
                ),
              ),
            ),
            separatorBuilder: (context, index) =>
                SizedBox(height: 12,),
            itemCount:10,
          ),
        )
      ],
    );

  }
}

