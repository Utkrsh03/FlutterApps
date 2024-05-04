import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Todolist extends StatefulWidget {
  const Todolist({super.key});

  @override
  State createState() => _TodolistState();
}

class Todolistmodelclass {
  String title;
  String description;
  String date;

  Todolistmodelclass({
    required this.title,
    required this.description,
    required this.date,
  });
}







class _TodolistState extends State{
  // text editing contoller
  TextEditingController datacontrol = TextEditingController();
  TextEditingController titlecontol = TextEditingController();
  TextEditingController description = TextEditingController();

  void showbottomsheet(bool doedit, [Todolistmodelclass? todolistmodelobj]) {
         showModalBottomSheet(
          scrollControlDisabledMaxHeightRatio: 2,
  
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
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
                const SizedBox(height: 10),
                Text("Create Task",
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    )),
                const SizedBox(height: 12),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Title",
                          style: GoogleFonts.quicksand(
                              color:const  Color.fromARGB(255, 17, 68, 5),
                              fontWeight: FontWeight.w400,
                              fontSize: 15)),

                      const SizedBox(height: 3),

                      TextField(    
                        controller: titlecontol,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(35, 192, 38, 1))),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color.fromARGB(255, 34, 171, 54)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),

                        // description
                      ),

                      //description

                      const SizedBox(height: 12),

                      Text("Description ",
                          style: GoogleFonts.quicksand(
                              color:const  Color.fromARGB(255, 0, 57, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 15)),

                      const SizedBox(height: 3),

                      TextField(
                        controller: description,
                      
                        maxLines: 4,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(35, 192, 38, 1))),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color.fromRGBO(35, 192, 38, 1)),
                              borderRadius: BorderRadius.circular(12),
                            )),
                      ),

                      //date

                      const SizedBox(height: 12),

                      Text(
                        "Date",
                        style: GoogleFonts.quicksand(
                            color: const Color.fromARGB(255, 1, 55, 2),
                            fontWeight: FontWeight.w400,
                            fontSize: 15
                            ),
                      ),

                      const SizedBox(height: 3),

                      TextField(
                        controller: datacontrol,
                        readOnly: true,

                        decoration: InputDecoration(
                            suffixIcon: const Icon(Icons.date_range_rounded),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(35, 192, 38, 1))),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color.fromRGBO(35, 192, 38, 1)),
                              borderRadius: BorderRadius.circular(12),
                            )),

                        //ontap

                        onTap: () async {
                          DateTime? pickeddate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2024),
                            lastDate: DateTime(2026),
                          );

                          String formatedDate =
                              DateFormat.yMMMd().format(pickeddate!);
                          setState(() {
                            datacontrol.text = formatedDate;
                          });
                        },
                      ),
                    ]),
                const SizedBox(height: 20),
                Container(
                  height: 50,
                  width: 300,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: const Color.fromRGBO(35, 192, 38, 1),
                    ),
                    onPressed: () {
                      doedit
                          ? submit(doedit, todolistmodelobj)
                          : submit(doedit);
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Submit",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
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

  var  listofColors = [
   const  Color.fromARGB(248, 142, 237, 118),
    const Color.fromARGB(248, 149, 245, 123),
   const  Color.fromARGB(248, 142, 237, 118),
   const  Color.fromARGB(248, 149, 245, 123),
   
  ];

  //List write here

  List<Todolistmodelclass> todolist = [
    // todolistmodelclass(
    //     title: "take notes",
    //     description: "take the notes of every app you write ",
    //     date: "10 july 2023"),
   
  ];

  void submit(bool doedit, [Todolistmodelclass? todolistmodelobj]) {
    if (titlecontol.text.trim().isNotEmpty &&
        description.text.trim().isNotEmpty &&
        datacontrol.text.trim().isNotEmpty) {
      if (!doedit) {
        setState(() {
          todolist.add(Todolistmodelclass(
            title: titlecontol.text.trim(),
            description: description.text.trim(),
            date: datacontrol.text.trim(),
          ));
        });
      } else {
        setState(() {
          todolistmodelobj!.date = datacontrol.text.trim();
          todolistmodelobj.title = titlecontol.text.trim();
          todolistmodelobj.description = description.text.trim();
        });
      }
    }
    clearcontroller();
  }

  //to chedk all the editing condition

  void clearcontroller() {
    titlecontol.clear();
    description.clear();
    datacontrol.clear();
  }

  //remove notes
  void removeTasks(Todolistmodelclass todolistmodelobj) {
    setState(() {
      todolist.remove(todolistmodelobj);
    });
  }

  void editTask(Todolistmodelclass todolistmodelobj) {
    titlecontol.text = todolistmodelobj.title;
    description.text = todolistmodelobj.description;
    datacontrol.text = todolistmodelobj.date;

    showbottomsheet(true, todolistmodelobj);
  }

  @override
  void dispose() {
    super.dispose();
    titlecontol.dispose();
    datacontrol.dispose();
    description.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
          backgroundColor:const Color.fromARGB(255, 38, 241, 24),
          centerTitle: true,
          title: Text("To-Do-List",
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ))
              
              ),



      body: ListView.builder(
          itemCount: todolist.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 16,
                ),
                child: Container(
                    decoration: BoxDecoration(
                      color: listofColors[index % listofColors.length],
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 10),
                          color: Color.fromRGBO(59, 85, 57, 0.588),
                          blurRadius: 10,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(children: [
                         
                          // The first row
                          Row(children: [
                            Container(
                              height: 60,
                              width: 60,
                              
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 253, 12, 12),
                                shape :BoxShape.circle 
                              ) ,
                               child:Image.asset("images/jj.png") ,
                              // child : Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmmGmkNaKRO9fxLEGUJdvL6C3DrF3k8hFRUg&usqp=CAU")
                            
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                  Text(
                                    todolist[index].title,
                                    style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 24,
                                      color:const  Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(todolist[index].description,
                                      style: GoogleFonts.quicksand(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Colors.black,
                                      ))
                                ]))
                          ]),

                          const SizedBox(height: 14),

                          //2nd row 

                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              children: [
                                Text(todolist[index].date,
                                    style: GoogleFonts.quicksand(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color:const Color.fromARGB(203, 0, 0, 0) 
                                    )),
                                const Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        editTask(todolist[index]);
                                      },
                                      child: const Icon(Icons.edit_outlined,
                                          color:
                                              Color.fromARGB(183, 0, 0, 0)),
                                    ),
                                    const SizedBox(width: 10),
                                    GestureDetector(
                                        onTap: () {
                                          removeTasks(todolist[index]);
                                        },
                                        child: const Icon(
                                          Icons.delete_outline,
                                          color:Color.fromARGB(183, 0, 0, 0) ,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),

                          //
                        ]))));
          }),
      floatingActionButton: FloatingActionButton(
          backgroundColor:const  Color.fromARGB(255, 39, 185, 32),
          onPressed: () {
            clearcontroller();
            showbottomsheet(false);
          },
          child: const Icon(
            size: 50,
            Icons.add,
            color: Colors.white,
          )),
    );
  }
