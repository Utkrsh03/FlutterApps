// import 'dart:ffi';


import 'package:expense_manager_app/category.dart';
import 'package:expense_manager_app/transaction_screen.dart';
import 'package:expense_manager_app/trash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class GraphPage extends StatefulWidget {
  const GraphPage({super.key});

  @override
  State<GraphPage> createState() => _GraphPageState();
}

class _GraphPageState extends State<GraphPage> {
        

  Map<String, double> data = {
    "Food": 20,
    "Fuel": 30,
    "Medicine": 10,
    "Entertainment": 50,
    "Shopping": 15
  };



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Graphs",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    
      body: SingleChildScrollView(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                PieChart(
                  dataMap: data,
                  chartType: ChartType.ring,
                  chartRadius: 150,
                  ringStrokeWidth: 30,
                  // baseChartColor: Colors.white,
                  centerText: "Total\n₹ 2550.00",
                  centerTextStyle: TextStyle(color: Colors.black),
                  chartValuesOptions: ChartValuesOptions(
                    showChartValues: false,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                SizedBox(
                  height: 340,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        width: double.infinity,
                        margin: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                            boxShadow: [BoxShadow(color: Colors.black, blurRadius: 8)],
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                           //  crossAxisAlignment: CrossAxisAlignment.center ,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(0, 174, 91, 0.7)),
                                child: Image.asset(
                                  "feul333.png",
                                  width: 35,
                                ),
                              ),
                              const SizedBox(
                                width: 17,
                              ),
                              Text(
                                "Medicine",
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                width: 110,
                              ),
                              Text(
                                "₹ 650.00",
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 10,
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Total",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      width: 110,
                    ),
                    Text(
                      "2,550.00",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
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
