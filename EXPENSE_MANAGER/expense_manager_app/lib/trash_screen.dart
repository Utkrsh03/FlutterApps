
import 'package:expense_manager_app/category.dart';
import 'package:expense_manager_app/graph.dart';
import 'package:expense_manager_app/transaction_screen.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Trashscreen extends StatefulWidget {
  const Trashscreen({super.key});

  @override
  State createState() => _TrashscreenState();
}

class _TrashscreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Trash",
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        // leading: const Icon(Icons.menu),
      ),
     
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 1,
                                offset: Offset(0, 0.5)),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 21,
                                width: 21,
                                padding: const EdgeInsets.only(bottom: 500),
                                decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.remove_outlined,
                                  color: Colors.white,
                                  size: 21,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 17,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Medicine",
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 130,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "300",
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 200,
                                  child: Text(
                                    "Lorem ipsum is simply dummy text of the",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 170,
                                    ),
                                    Text(
                                      "3 June | 11.50 AM",
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    
      drawer: Drawer(
          child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Expense Manager ',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  const Text('Save all your transactions ',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),

                   const SizedBox(height: 20),
                   
                   GestureDetector( 
                     onTap:() {
                              Navigator.push(context, MaterialPageRoute(builder:(context)=>  transactionscreen()));
                     },
                 child : Row(children: [
                    Image.asset('transac1.jpg'),
                    const SizedBox(width: 4),
                    const Text('Transaction',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 16)),
                  ]),
                   ), 
                  

                  //2

                  const SizedBox(height: 20),


                   GestureDetector( 
                     onTap:() {
                              Navigator.push(context, MaterialPageRoute(builder:(context)=>  GraphPage()));
                     },
                  
                 child :   Row(children: [
                      Image.asset('graph1.jpg'),
                      const SizedBox(width: 4),
                      const Text('Graph',
                          style: TextStyle( 
                              fontWeight: FontWeight.w400, fontSize: 16)),
                    ]),
                   ) , 
                

                  //3

                  const SizedBox(height: 20),

                  GestureDetector( 
                     onTap:() {
                              Navigator.push(context, MaterialPageRoute(builder:(context)=>  Categoryscreen()));
                     },

               child :    Row(children: [
                    Image.asset('category1.jpg'),
                    const SizedBox(width: 4),
                    const Text('Category',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 16)),
                  ]),
                  ) , 

                  //4

                  const SizedBox(height: 20),


                                  GestureDetector( 
                     onTap:() {
                              Navigator.push(context, MaterialPageRoute(builder:(context)=>  Trashscreen()));
                     },
                child :   Row(children: [
                    Image.asset('bin.jpg'),
                    const SizedBox(width: 4),
                    const Text('Trash',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 16)),
                  ]),
                                  ) , 
                  //5
                  const SizedBox(height: 20),

                  Row(children: [
                    Image.asset('about1.jpg'),
                    const SizedBox(width: 4),
                    const Text('About us',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 16)),
                  ])
                ],
              ))),
    );
  }
}
