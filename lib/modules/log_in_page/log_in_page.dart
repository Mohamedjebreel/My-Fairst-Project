import 'package:finalismail/fit_club_layout.dart';
import 'package:finalismail/shared/components/components.dart';
import 'package:finalismail/shared/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LogInPage extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {


          return  Scaffold(
            backgroundColor: mainColor,
            appBar: AppBar(),
            body: SafeArea(
              top: false,
              bottom: false,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Text("Sign in",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,

                          ),
                        ),
                        const SizedBox(height: 55,),
                        TextFormField(
                          cursorColor: Colors.white,//لون الموشر
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                              color: Colors.white
                          ),

                          validator: ( value) {
                            if (value == null ||value.isEmpty) {
                              return 'please enter your Email';
                            }
                          },
                          decoration: InputDecoration(
                            filled: true,//هل اضلل الحقل من جوا
                            //  label:Text(hintText) , //هاي بتنحط بدل الهينت تيكست لمن اشغلها بتطلع ل فوق
                            hintText: "Email",
                            hintStyle: TextStyle(
                              color: Color(0xe6646781),
                            ),

                            enabledBorder: UnderlineInputBorder( //نوع الحقل من غير مضغط عليه
                              borderSide: BorderSide(
                                  color: Color(0xe6646781),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: UnderlineInputBorder(//hgprg glk hqy' ugdi
                              borderSide: BorderSide(
                                  color: orangColor,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30,),
                        TextFormField(
                          cursorColor: Colors.white,//لون الموشر
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true, //النص ظاهر ولا مختفي
                          style: TextStyle(
                            color: Colors.white
                          ),

                          validator: ( value) {
                            if (value == null ||value.isEmpty) {
                              return 'please enter your Password';
                            }
                          },
                          decoration: InputDecoration(
                            filled: true,//هل اضلل الحقل من جوا
                            //  label:Text(hintText) , //هاي بتنحط بدل الهينت تيكست لمن اشغلها بتطلع ل فوق
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: Color(0xe6646781),
                            ),

                            enabledBorder: UnderlineInputBorder( //نوع الحقل من غير مضغط عليه
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
                        const SizedBox(height: 30,),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                                     if (formKey.currentState!.validate()) {
                                      navigateAndFinish(context, FitClublayout());
                                     }
                            },
                            style: ElevatedButton.styleFrom(
                              primary: orangColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 130, vertical: 22),
                            ),
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xffffffff)),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30,),
                        InkWell(
                          onTap: () {

                          },
                          child: Center(
                            child: const Text("Forgot Password?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,

                              ),
                            ),
                          ),
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
