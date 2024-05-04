


import 'package:flutter/material.dart'  ; 

class drawer extends StatefulWidget{ 
  const drawer({super.key}) ; 
   
   @override 
   State createState() => _drawerState() ;
}
class _drawerState extends State{ 
   Widget build(BuildContext con){ 
     return Scaffold(  
         drawer: Drawer(  
          child:Column( 
            mainAxisAlignment:  MainAxisAlignment.center, 
            children:[ 
               const Center ( 
                 child : Text('Expense Manager')
               ) , 

               IconButton( 
                 onPressed:() { 
                   Navigator.of(context).pop() ;
                 }, 
                 icon:const Icon(Icons.close) , 
               )
            ]
          )
         )
     ) ;
   }
}