
// Quiz App with Normal login page 


import 'package:flutter/material.dart';

void main() { 
  runApp (const MyApp());
  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }

}
  
  class LoginPage extends StatefulWidget{ 
     const LoginPage ({super.key});

    // ignore: annotate_overrides
    State createState() =>  _LoginPagState();
  }

class _LoginPagState extends State<LoginPage>{ 
    @override 

  // ignore: override_on_non_overriding_member
  TextEditingController  username = TextEditingController();
      TextEditingController   password  = TextEditingController() ;
      // ignore: prefer_final_fields
      GlobalKey<FormState> _formKey = GlobalKey <FormState>() ;


    // ignore: annotate_overrides
    Widget build (BuildContext con){  
      return  Scaffold(    
          body: Padding ( 
                padding : const EdgeInsets.all(7.0),
                child:Form (   
                  key :_formKey , 
                  child :  Column (  
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children : [ 
                          const SizedBox(height:20) ,

                        
                           Image.network( "https://png.pngtree.com/png-vector/20191003/ourmid/pngtree-user-login-or-authenticate-icon-on-gray-background-flat-icon-ve-png-image_1786166.jpg"   , 
                               height: 90 , 
                                width : 90 
                              )   ,

                              const SizedBox (height : 20) , 
                               
                               TextFormField(  
                                 controller : username  , 
                                 //key : userNameKey , 
                                 decoration : InputDecoration ( 
                                   hintText :"Enter username" , 
                                   label : const Text("Enter username") , 
                                   border :OutlineInputBorder ( 
                                     borderRadius :BorderRadius.circular(20) ,
                                   ), 

                                   prefixIcon: const Icon (Icons.person
                                   ),
                                 ),

                               validator : (value){ 
                                   // ignore: avoid_print
                                   print("In username validator") ;

                                   if (value==null || value.isEmpty) { 
                                       return "please enter the username" ;

                                   }else { 
                                    return null ;
                                   }
                               },
                               keyboardType: TextInputType.emailAddress,  
                                 

                               ),

                               const SizedBox(height :20) ,

                             TextFormField( 
                               controller : password ,
                               //key:passwordKey 

                               obscureText :true ,
                               obscuringCharacter: "*",
                               decoration : InputDecoration( 
                               hintText : "Enter password" ,
                                 border :OutlineInputBorder( 
                                 borderRadius: BorderRadius.circular(20)
                                 ) ,
                                   prefixIcon:const Icon ( 
                                      Icons.lock ,
                                   ),

                               
                              //  prefixIcon : const Icon ( Icons.lock)
                              suffixIcon: const Icon(   
                                   Icons.remove_red_eye_outlined
                              ),
                                
                               ),


                             

                             

                             validator :(value){ 
                               // ignore: avoid_print
                               print("in password validator");
                               if(value==null || value.isEmpty){ 
                                 return "please enter passowrd" ;
                               }else { 
                                       return null ;
                               }
                             }
 
                             ),
                        const SizedBox(height:20),


                      ElevatedButton(   
                  onPressed: () { 
                            // ignore: unused_local_variable
                            bool loginValidator = _formKey.currentState!.validate();

                            if(loginValidator){ 
                               ScaffoldMessenger.of(context).showSnackBar(
                                 const SnackBar( 
                                  content : Text("login Successful"),
                                 ),

                               );
                                 Navigator.push(
                                  context,
                           // ignore: prefer_const_constructors
                           MaterialPageRoute(builder: (context) => QuizApp()),
                                        );

                               
                               }else { 
                                  ScaffoldMessenger.of(context).showSnackBar(
                                 const SnackBar( 
                                  content : Text("login failed"),
                                 )
                                  );
                               }

                           

                               //bool userNmameValidated = userNameKey.currentState!.validate();
                               //bool passwordValidated = passwordKey.currentState!.validate();

                               //if(userNameValidated && passwordValidated) { 
                               // ScaffoldMessenger.of(context).showSnackBar ( 
                               //   cosnt SnackBar (  
                               // content:Text (" Login Successful"),
                               // ) , ) ;
                               // } else { 
                               // ScaffoldMessenger.of(context).showSnackBar ( 
                               //  const SnackBar (  
                               // content :Text("Login Failed"),),);}
                            },
                            child : const  Text ( "Login"),
                      )
                      
                             
                      ]
                  )
                )
               ) 

               
        );

    }
}

  // ignore: camel_case_types
  class singleclassmodel{
         final int? answerIndex ;
         final String? question ;
         final  List<String>?options ;
        
         const singleclassmodel({this.answerIndex , this.question , this.options}) ;
  }


class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}






class _QuizAppState extends State<QuizApp> {
  bool isQuestionScreenFlag = true;


  int questionIndex = 0;
  int selectedIndex = -1;



  int totalCorrect = 0;
  int answerIndex = -1;



  List questionList = [
    const singleclassmodel(
      question: "Who co-founded Flipkart, starting it as a bootstrap startup?",
      options: ["Sachin Bansal", "Bhavish Aggarwal", "Vijay Shekhar Sharma", "Kunal Bahl"],
      answerIndex: 0,
    ),
    const singleclassmodel(
      question: "Which entrepreneur bootstrapped Zoho Corporation, a multinational "
      "tech company?",
      options: ["Nandan Nilekani", "Shiv Nadar", "Sridhar Vembu", "Byju Raveendran"],
      answerIndex: 2,
    ),
    const singleclassmodel(
      question: "Who co-founded RedBus, India's largest online bus ticketing platform, without relying on external funding initially?",
      options: ["Kunal Bahl", "Phanindra Sama", "Binny Bansal", "Ritesh Agarwal"],
      answerIndex: 2,
    ),
    const singleclassmodel(
      question: "Who started Freshworks, a cloud-based customer engagement software company, without external funding?",
      options: ["Girish Mathrubootham", "Ritesh Agarwal", "Vijay Shekhar Sharma", "Byju Raveendran"],
      answerIndex: 3,
    ),
    const singleclassmodel( 
      question: "Which entrepreneur bootstrapped PolicyBazaar, India's leading online insurance aggregator?",
      options: ["Dinesh Agarwal", "Yashish Dahiya", "Deepindher Goyal", "Vijay Shekhar Sharma"],
      answerIndex: 1,
    ),
  ];
   
    // logic part 
    //materialstateproperty color chi ---naav isCorrect dila and te NaswerIndex sathi chalu ahea 
  MaterialStateProperty<Color?> isCorrect(answerIndex) {
    if (selectedIndex != -1) {
      if (answerIndex == questionList[questionIndex].answerIndex) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (answerIndex != selectedIndex) {
        return const MaterialStatePropertyAll(null);
      } else {
        return const MaterialStatePropertyAll(Colors.red);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }



    //set function
  void validateCurrentPage() {
    setState(() {
      if (questionIndex < questionList.length - 1 && selectedIndex != -1) {
        questionIndex++;
        selectedIndex = -1;
      }

      if (selectedIndex != -1) {
        isQuestionScreenFlag = false;
      }
    });
  }

  Scaffold isQuestionScreen() {
    if (isQuestionScreenFlag == true) {
      return Scaffold(
        backgroundColor:const  Color.fromARGB(255, 254, 232, 87) , 
        appBar: AppBar(
          backgroundColor:const  Color.fromARGB(255, 143, 188, 225),
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Color.fromARGB(255, 235, 25, 22),
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                //question and question number 
                const Text(
                  "Question: ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${questionIndex + 1}/ ${questionList.length}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),


           //question one by one 
            SizedBox(
              width: 380,
              height: 140,
              child: Text(questionList[questionIndex].question,
                  style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                  )),
            ),


            // options 
            ElevatedButton(
              onPressed: () {


                setState(() {
                  selectedIndex = 0;
                });
              },


              style: ButtonStyle(
                backgroundColor: isCorrect(0),
              ),



              child: Text(
                "A. ${questionList[questionIndex].options[0]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),





            const SizedBox(
              height: 25,
            ),



            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              style: ButtonStyle(
                backgroundColor: isCorrect(1),
              ),
              child: Text(
                "B. ${questionList[questionIndex].options[1]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),




            const SizedBox(
              height: 25,
            ),
            
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
              style: ButtonStyle(
                backgroundColor: isCorrect(2),
              ),
              child: Text(
                "C. ${questionList[questionIndex].options[2]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 3;
                });
              },
              style: ButtonStyle(
                backgroundColor: isCorrect(3),
              ),
              child: Text(
                "D. ${questionList[questionIndex].options[3]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),


        //floatig action button for checking the current page or for the validation of the current page 
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            validateCurrentPage();
          },
        child: const Icon(Icons.forward, color: Color.fromARGB(255, 217, 40, 16)),
        ),
         
      );
    } else {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 236, 217, 40),
        appBar: AppBar(
          backgroundColor:const  Color.fromARGB(255, 50, 153, 238),
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Color.fromARGB(255, 212, 15, 15),
            ),
          ),
          centerTitle: true,
        ),

        body:Center(
          child:Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            const SizedBox(
              height: 25,
            ),
            Image.network(
                "https://www.shutterstock.com/image-vector/trophy-cup-champion-shiny-golden-600nw-1570181977.jpg",
                alignment: Alignment.center,
                height: 350,
                width: 250),
            const SizedBox(
              height: 25,
            ),
            const Text("Congralutions",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                )),
            const SizedBox(
              height: 25,
            ),
            Text(
              "$totalCorrect/ ${questionList.length}",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),


            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  isQuestionScreenFlag = true;
                  questionIndex = 0;
                  selectedIndex = -1;
                });
              },
              child: const Text(
                "Reset",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      )
      );
    }
  }

 

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
 }



} 

 