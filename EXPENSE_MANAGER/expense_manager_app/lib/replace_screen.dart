import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:intl/intl.dart';

class replace extends StatefulWidget {
  const replace({super.key});

  @override
  State createState() => _replaceState();
}

class _replaceState extends State {
  // text editing contoller
  TextEditingController date = TextEditingController();
  TextEditingController amount = TextEditingController();
  TextEditingController category = TextEditingController();
  TextEditingController description = TextEditingController();

  void showbottomsheet() {
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
                const SizedBox(height: 12),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Date",
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w400, fontSize: 15)),

                      const SizedBox(height: 3),

                      TextField(
                        controller: date,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide()),
                          // border: OutlineInputBorder(
                          //   borderSide:
                          //       const BorderSide(color: Color.fromARGB(255, 34, 171, 54)),
                          //   borderRadius: BorderRadius.circular(12),
                          // ),
                        ),

                        // description
                      ),

                      //description

                      const SizedBox(height: 12),

                      Text("Amount ",
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w400, fontSize: 13)),

                      const SizedBox(height: 3),

                      TextField(
                        controller: amount,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide()),
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
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide()),
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
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide()),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            )),

                        //ontap

                        onTap: () {},
                      ),
                    ]),
                const SizedBox(height: 20),
                Container(
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
                      color: Color.fromRGBO(14, 161, 125, 1)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
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
                ),
                const SizedBox(height: 30),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
