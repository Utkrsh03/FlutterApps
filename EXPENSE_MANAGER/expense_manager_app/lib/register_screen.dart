import 'package:expense_manager_app/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class registerscreen extends StatefulWidget {
  const registerscreen({super.key});

  @override
  State createState() => _registerscreen();
}



class _registerscreen extends State {



  TextEditingController name = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext con) {
    return Scaffold(
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
          const Spacer(),
          SizedBox(
            // height: 69.76,
            // width: 58.82,s

            child:
                Image.asset('assets/Group 88.jpg', height: 78.82, width: 79.76),
            //  decoration:BoxDecoration(
            //   shape:BoxShape.circle ,
            //  ) ,
          ),
          const SizedBox(height: 45),
          const SizedBox(
              child: Padding(
                  padding: EdgeInsets.only(right:145),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Create your Account",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ]))),
                     // SizedBox(height: 15),
          Container(
            width: double.infinity , 
            // height: 390,
            child: Container(
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Form(
                        key: _formkey,
                        child: Column(children: [
                          Container(
                            width: 280,
                            height: 49,
                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              
                                color: Color.fromARGB(160, 255, 255, 255),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.15),
                                    offset: Offset(0, 3),
                                    blurRadius: 15,
                                  )
                                ]),
                            child: TextFormField(
                              controller: name,
                              decoration:  InputDecoration(
                                contentPadding: EdgeInsets.only(left: 20), 
                                hintText: "name",
                                border: InputBorder.none,
                              ),
                            ),
                          ),

                          SizedBox(height:5) , 
                          Container(
                            width: 280,
                            height: 49,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                                color: Color.fromARGB(160, 255, 255, 255),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.15),
                                    offset: Offset(0, 3),
                                    blurRadius: 10,
                                  )
                                ]),
                            child: TextFormField(
                              controller: username,
                              decoration: const InputDecoration(
                               contentPadding: EdgeInsets.only(left: 20), 
                                hintText: "username",
                                border: InputBorder.none,
                              ),
                            ),
                          ),

                          SizedBox(height:5) , 

                          Container(
                            width: 280,
                            height: 49,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                                color: Color.fromARGB(160, 255, 255, 255),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.15),
                                    offset: Offset(0, 3),
                                    blurRadius: 10,
                                  )
                                ]),
                            child: TextFormField(
                              controller: password,
                              decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 20),
                                hintText: "password",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(height:5) , 

                          Container(
                            width: 280,
                            height: 49,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                                color: Color.fromARGB(160, 255, 255, 255),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.15),
                                    offset: Offset(0, 3),
                                    blurRadius: 10,
                                  )
                                ]),
                            child: TextFormField(
                              controller: password,
                              decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 20),
                                hintText: "Confirm password",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(height:10) , 

                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => loginscreen()));
                            },
                            child: Container(
                                height: 50,
                                width: 280,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text('Sign Up',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255))),
                                    ]),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color.fromRGBO(14, 161, 125, 1))),
                          )
                        ])))),
          ),
          const Spacer(),
          Container(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text('Dont have an account?'),
            SizedBox(width: 1),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => loginscreen()));
                },
                child: const Text('Sign-up',
                    style: TextStyle(color: Color.fromARGB(255, 30, 126, 205))))
          ])),
          SizedBox(height: 50)
        ])));
  }
}
