
// import 'package:flutter/material.dart';
// // import 'package:flutter/material.dart' ; 


// class company extends InheritedWidget{ 
//      final string CompanyName ; 
//      final int empCount;

//      const Company( { 
//             super.key , 
//             required this.CompanyName , 
//             required this.empCount , 
//             required super.count 
//      });
//      Static company of(BuildContext context){ 
//       return context dependOnInheritedWidgetofExactType<Company>()! ; 
//      }    
//      @override 
//      bool updatesshouldNotify(company oldWidget) { 
//        return companyName !=ioldWidget.companyNAme() ; 
//        || empcount != oldWidge.empCount ; 
//      }
// }


import 'package:flutter/material.dart' ; 

class User { 
   final String name ; 
     final int age ; 

      User (this.name , this.age); 
     } 
