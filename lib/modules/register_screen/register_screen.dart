import 'package:finalismail/modules/log_in_page/log_in_page.dart';
import 'package:finalismail/shared/components/components.dart';

import 'package:finalismail/shared/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var formKey = GlobalKey<FormState>();

  var nameController = TextEditingController();

  var emailController = TextEditingController();

  var phoneController = TextEditingController();

  var passwordController = TextEditingController();

  var countryController = TextEditingController();

  var cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(),
      body: SafeArea(
        top: false,
        bottom: false,
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                    ),
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  TextFormField(
                    cursorColor: Colors.white,
                    //لون الموشر
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    style: TextStyle(color: Colors.white),

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter your name';
                      }
                    },
                    decoration: InputDecoration(
                      filled: true,
                      //هل اضلل الحقل من جوا
                      //  label:Text(hintText) , //هاي بتنحط بدل الهينت تيكست لمن اشغلها بتطلع ل فوق
                      hintText: "Name",
                      hintStyle: TextStyle(
                        color: Color(0xe6646781),
                      ),

                      enabledBorder: UnderlineInputBorder(
                        //نوع الحقل من غير مضغط عليه
                        borderSide: BorderSide(
                          color: Color(0xe6646781),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        //hgprg glk hqy' ugdi
                        borderSide: BorderSide(
                          color: orangColor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    cursorColor: Colors.white,
                    //لون الموشر
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.white),

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter your Email';
                      }
                    },
                    decoration: InputDecoration(
                      filled: true,
                      //هل اضلل الحقل من جوا
                      //  label:Text(hintText) , //هاي بتنحط بدل الهينت تيكست لمن اشغلها بتطلع ل فوق
                      hintText: "Email",
                      hintStyle: TextStyle(
                        color: Color(0xe6646781),
                      ),

                      enabledBorder: UnderlineInputBorder(
                        //نوع الحقل من غير مضغط عليه
                        borderSide: BorderSide(
                          color: Color(0xe6646781),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        //hgprg glk hqy' ugdi
                        borderSide: BorderSide(
                          color: orangColor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    cursorColor: Colors.white,
                    //لون الموشر
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    style: TextStyle(color: Colors.white),

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter your mobile number';
                      }
                    },
                    decoration: InputDecoration(
                      filled: true,
                      //هل اضلل الحقل من جوا
                      //  label:Text(hintText) , //هاي بتنحط بدل الهينت تيكست لمن اشغلها بتطلع ل فوق
                      hintText: "Mobile Number",
                      hintStyle: TextStyle(
                        color: Color(0xe6646781),
                      ),

                      enabledBorder: UnderlineInputBorder(
                        //نوع الحقل من غير مضغط عليه
                        borderSide: BorderSide(
                          color: Color(0xe6646781),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        //hgprg glk hqy' ugdi
                        borderSide: BorderSide(
                          color: orangColor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    cursorColor: Colors.white,
                    //لون الموشر
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    //النص ظاهر ولا مختفي
                    style: TextStyle(color: Colors.white),

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter your Password';
                      }
                    },
                    decoration: InputDecoration(
                      filled: true,
                      //هل اضلل الحقل من جوا
                      //  label:Text(hintText) , //هاي بتنحط بدل الهينت تيكست لمن اشغلها بتطلع ل فوق
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Color(0xe6646781),
                      ),

                      enabledBorder: UnderlineInputBorder(
                        //نوع الحقل من غير مضغط عليه
                        borderSide: BorderSide(
                          color: Color(0xe6646781),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: orangColor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    cursorColor: Colors.white,
                    //لون الموشر
                    controller: countryController,
                    keyboardType: TextInputType.name,
                    style: TextStyle(color: Colors.white),

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter your country';
                      }
                    },
                    decoration: InputDecoration(
                      filled: true,
                      //هل اضلل الحقل من جوا
                      //  label:Text(hintText) , //هاي بتنحط بدل الهينت تيكست لمن اشغلها بتطلع ل فوق
                      hintText: "Country",
                      hintStyle: TextStyle(
                        color: Color(0xe6646781),
                      ),

                      enabledBorder: UnderlineInputBorder(
                        //نوع الحقل من غير مضغط عليه
                        borderSide: BorderSide(
                          color: Color(0xe6646781),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        //hgprg glk hqy' ugdi
                        borderSide: BorderSide(
                          color: orangColor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    cursorColor: Colors.white,
                    //لون الموشر
                    controller: cityController,
                    keyboardType: TextInputType.name,
                    style: TextStyle(color: Colors.white),

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter your city';
                      }
                    },
                    decoration: InputDecoration(
                      filled: true,
                      //هل اضلل الحقل من جوا
                      //  label:Text(hintText) , //هاي بتنحط بدل الهينت تيكست لمن اشغلها بتطلع ل فوق
                      hintText: "City",
                      hintStyle: TextStyle(
                        color: Color(0xe6646781),
                      ),

                      enabledBorder: UnderlineInputBorder(
                        //نوع الحقل من غير مضغط عليه
                        borderSide: BorderSide(
                          color: Color(0xe6646781),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        //hgprg glk hqy' ugdi
                        borderSide: BorderSide(
                          color: orangColor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "By creating account, you agree to Fitclub",
                        style: TextStyle(
                          color: Color(0xe6646781),
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Privacy",
                        style: TextStyle(
                          color: orangColor,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Policy ",
                        style: TextStyle(
                          color: orangColor,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "and",
                        style: TextStyle(
                          color: Color(0xe6646781),
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Terms of Use ",
                        style: TextStyle(
                          color: orangColor,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          navigateTo(context, LogInPage());
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: orangColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 128, vertical: 22),
                      ),
                      child: const Text(
                        'Sign up',
                        style:
                            TextStyle(fontSize: 15, color: Color(0xffffffff)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
