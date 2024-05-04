import 'package:expense_manager_app/register_screen.dart';
import 'package:expense_manager_app/transaction_screen.dart';
import 'package:flutter/material.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State createState() => _loginscreenState();
}

class _loginscreenState extends State {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext con) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const Spacer(),
          Container(
            height: 69.76,
            width: 58.82,
            child:
                Image.asset('assets/Group 88.jpg', height: 58.82, width: 69.76),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(height: 30),
          const SizedBox(
              child: Padding(
                  padding: EdgeInsets.only(right: 100),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Login to your Account",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ]))),
          Container(
            width: double.infinity,
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
                            decoration:  BoxDecoration(
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
                          SizedBox(height: 5) , 
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          transactionscreen()));
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
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text('Dont have an account?'),
              SizedBox(width: 1),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => registerscreen()));
                  },
                  child: const Text('Sign-up',
                      style:
                          TextStyle(color: Color.fromARGB(255, 30, 126, 205))))
            ]),
          ),
          const SizedBox(height: 50)
        ],
      )),
    );
  }
}
