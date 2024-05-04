import 'package:expense_manager_app/graph.dart';
import 'package:expense_manager_app/transaction_screen.dart';
import 'package:expense_manager_app/trash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Categoryscreen  extends StatefulWidget {
  const Categoryscreen({super.key});

  @override
  State<Categoryscreen > createState() => _CategoryscreenState();
}

class _CategoryscreenState extends State<Categoryscreen> {
  Future<dynamic> showmyDialog() async {
    return await showDialog(
        context: context,
        barrierColor: Colors.black54,
        barrierDismissible: false,
        builder: (BuildContext context) {
          //  return Padding (padding: EdgeInsets.all(20),

          //  child :
          return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(   
                    mainAxisSize: MainAxisSize.min,
                   children: [
                  AlertDialog(
                    title: const Text("Delete Category"),
                    titlePadding: EdgeInsets.only(left: 50, bottom: 2),
                    content: const SingleChildScrollView(
                      child: ListBody(
                        children: [
                          Text('Are you sure you want to delete the'),
                          Text('              selected category?'),
                        ],
                      ),
                    ),

                    //  content:  Text( "Are you sure you want to delete the "  )  ,
                    //  contentPadding: EdgeInsets.all(5),
                      actionsAlignment: MainAxisAlignment.spaceAround ,   
                    actions: <Widget>[
                       

                       Container (
                        decoration: BoxDecoration( 
                          color :Color.fromARGB(252, 4, 200, 187)  , 
                           borderRadius: BorderRadius.circular(20) ,
                          
                        ),

                     child :  TextButton(
                        
                        onPressed: () => Navigator.pop(context, 'Delete'),
                        child: const Text('Delete', style : TextStyle(fontSize: 16 , fontWeight: FontWeight.w500 , color:Color.fromARGB(255, 255, 255, 255))),
                        
                      ),), 
                     

                      Container (
                        decoration : BoxDecoration (  
                             borderRadius: BorderRadius.circular(20) , 
                            

                        ), 
                      child :   TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel' , style : TextStyle(fontSize: 16 , fontWeight: FontWeight.w500 , color:Colors.black)),
                      ),
                      )
                    ],


                  )
                ])
              ]);
        });
  }

  TextEditingController imageurl = TextEditingController();
  TextEditingController category = TextEditingController();

  void showbottomsheet() {
    showModalBottomSheet(
        scrollControlDisabledMaxHeightRatio: 2,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        isDismissible: true,
        context: context,
        builder: (context) {
          return Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                const SizedBox(height: 10),
                const SizedBox(height: 12),
                Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start ,
                    children: [
                      const SizedBox(height: 12),
                      Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                            Container(
                                width: 20,
                                height: 20,
                                child: Image.asset('fileph1.png'),
                                decoration:
                                    BoxDecoration(shape: BoxShape.circle)),
                          ])),
                      SizedBox(height: 3),
                      const Text('Add'),
                      const SizedBox(height: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Imageurl ",
                              style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w400, fontSize: 13)),
                        ],
                      ),
                      const SizedBox(height: 3),
                      TextField(
                        controller: imageurl,
                        decoration: InputDecoration(
                          hintText: 'Enter URL',
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
                      const SizedBox(height: 12),
                      Text("Category ",
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w400, fontSize: 13)),
                      const SizedBox(height: 3),
                      TextField(
                        controller: imageurl,
                        decoration: InputDecoration(
                          hintText: ' Enter Category Name',
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
                      const SizedBox(height: 12),
                      GestureDetector(
                          child: Container(
                        height: 40,
                        width: 123,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 2),
                              color: Color.fromRGBO(0, 0, 0, 0.2),
                              blurRadius: 4,
                            )
                          ],
                          // color : Color.fromRGBO(14,161,125,1)
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(14, 161, 125, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Add",
                            style: GoogleFonts.inter(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      )),
                      const SizedBox(height: 30),
                    ])
              ]));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Categories",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, //count of items in number 2
          mainAxisSpacing: 20, // spacing rows
          crossAxisSpacing: 20, // spacing columns
        ),
        padding: EdgeInsets.all(8.0), // padding around the grid
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: const Offset(1, 2),
                  ),
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    showmyDialog();
                  },
                  child: Image.asset("fuel.jpg"),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Fuel",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          );
        },
      ),

      // floating action buttoon
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showbottomsheet();
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        label: const Row(
          children: [
            Icon(
                 Icons.add_circle_rounded,
              size:44,
              color: Color.fromRGBO(14, 161, 125, 1),
            ),
            Text('Add Category')
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

     
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
