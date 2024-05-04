import 'package:expense_manager_app/category.dart';
import 'package:expense_manager_app/graph.dart';
import 'package:expense_manager_app/trash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class transactionscreen extends StatefulWidget {
  const transactionscreen({super.key});

  @override
  State createState() => _transactionscreenState();
}

class _transactionscreenState extends State {
  TextEditingController date = TextEditingController();
  TextEditingController amount = TextEditingController();
  TextEditingController category = TextEditingController();
  TextEditingController description = TextEditingController();

  void showbottomsheet() {
    showModalBottomSheet(
        scrollControlDisabledMaxHeightRatio: 2,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        )),
        isDismissible: true,
        //Widget build (BuildContext context)
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,

              //to avoid the overlapping of the keyboard
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 30),

                const SizedBox(height: 12),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Date",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400, fontSize: 15)),

                      const SizedBox(height: 3),

                      TextField(
                        controller: date,
                        decoration: InputDecoration(
                          hintText: '11-06-2022',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide()),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(191, 189, 189, 1)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),

                        // description
                      ),

                      //description

                      const SizedBox(height: 12),

                      Text("Amount ",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400, fontSize: 13)),

                      const SizedBox(height: 3),

                      TextField(
                        controller: amount,
                        decoration: InputDecoration(
                          hintText: '900',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide()),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(191, 189, 189, 1)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),

                      //date

                      const SizedBox(height: 12),

                      Text("Category ",
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w400, fontSize: 13)),

                      const SizedBox(height: 3),

                      TextField(
                        controller: category,
                        decoration: InputDecoration(
                          hintText: 'Shopping',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide()),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(191, 189, 189, 1)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),

                      //date

                      const SizedBox(height: 12),

                      Text(
                        "Description",
                        style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w400, fontSize: 13),
                      ),

                      const SizedBox(height: 3),

                      TextField(
                        controller: description,

                        decoration: InputDecoration(
                          hintText: 'Lorem ',
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide()),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(191, 189, 189, 1)),
                              borderRadius: BorderRadius.circular(12),
                            )),

                        //ontap

                        onTap: () {},
                      ),
                    ]),
                const SizedBox(height: 20),
                // Container(
                //   height:40,
                //   width: 123,
                //   decoration:
                //       BoxDecoration(borderRadius: BorderRadius.circular(10)   ,
                //         boxShadow: [
                //           BoxShadow(
                //             offset: Offset(1, 2),
                //             color : Color.fromRGBO(0 ,0,0,0.2 ) ,
                //             blurRadius: 4 ,
                //           )
                //         ] ,
                //         color : Color.fromRGBO(14,161,125,1)

                //       ),

                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(10),
                //       ),

                //     ),
                //     onPressed: () {

                //     },
                //     child: Text(
                //       "Add",
                //       style: GoogleFonts.inter(
                //         color: Color.fromRGBO(255, 255, 255, 1),
                //         fontWeight: FontWeight.w500,
                //         fontSize: 16,
                //       ),
                //     ),
                //   ),
                // ),

                Container(
                                  height: 40,
                                  width: 123,
                                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    const BoxShadow(
                      offset: Offset(1, 2),
                      color: Color.fromRGBO(0, 0, 0, 0.2),
                      blurRadius: 4,
                    )
                  ],
                  ),
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(14, 161, 125, 1) ,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Add",
                  style: GoogleFonts.inter(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                                  ),
                                ),
                const SizedBox(height: 30),
              ],
            ),
          );
        });
  }

/////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext con) {
    return Scaffold(
      appBar: AppBar(
          // leading:Icon(Icons.menu) ,

          title: const Text(" June 2022"),
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))]),

      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center ,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          // boxShadow: [
                          //   BoxShadow(
                          //       color: Colors.black,
                          //       blurRadius: 1,
                          //       offset: Offset(0, 0.5)),
                          // ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start , 
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 41,
                                width: 41,
                                padding: const EdgeInsets.only(left:12) ,
                                decoration: const BoxDecoration(
                                   shape: BoxShape.circle,
                                ),
                                child:Image.asset('kkmedicine.png'), 
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
                                    Container(
                                      width:15 , 
                                      height:15 ,
                                      decoration: BoxDecoration(shape:BoxShape.circle) ,
                                 child :  Image.asset('subnewtrack.png'), ) , 
                                  SizedBox(width:3) , 
                                    Text(
                                      "300",
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 12,
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

      //  floatingActionButton: Center  (
      //   child : Column  (

      //   mainAxisAlignment: MainAxisAlignment.end ,

      //  children : [
      //  FloatingActionButton(onPressed:(

      //  ) {
      //       Navigator.push(context, MaterialPageRoute(builder:(context)=>replace()));
      //    },
      //       child :   Row (
      //         children: [
      //           Container (

      //      child :  SizedBox (
      //     child : Container(
      //       child :   Icon(Icons.add ) ,
      //        decoration: BoxDecoration(
      //         shape :BoxShape.circle,
      //          color : Color.fromRGBO(253, 152, 10, 1)
      //        )
      //     )
      //      )
      //           ),
      //            SizedBox(width:2) ,

      //         Text('Add Transaction')

      //         ]
      //    
      //     )

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showbottomsheet();
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        label: const Row(
          children: [
            Icon(
              Icons.add_circle_rounded,
              size:44,
              color: Color.fromRGBO(14, 161, 125, 1),
            ),
            SizedBox(width:4) , 
            Text("Add Transaction ",
             style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w400))
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

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
