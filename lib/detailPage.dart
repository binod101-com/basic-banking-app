import 'package:basic_banking_app/paymentPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

class detailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        backgroundColor: Colors.cyan,
      ),
       body: Container(
         width: double.infinity,
         height: double.infinity,
         decoration: BoxDecoration(
             gradient: LinearGradient(
                 colors: [
                   Color(0xff0ee7c4),
                   Color(0xff8ddad5),
                 ]
             )
         ),
         child: Padding(
           padding: const EdgeInsets.only(top: 15.0,left: 10.0,right: 10.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(height: 21,),
               Center(
                 child: CircleAvatar(
                   backgroundColor: Colors.blue,
                   backgroundImage: AssetImage('assets/images/boy.jpg'),
                   radius: 100,
                 ),
               ),
              SizedBox(height: 25,),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("    Name : Vijay",
                     style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),),
                   SizedBox(height: 16,),
                   Text("    Mobile : +91xxxxxxxxxx",
                     style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),),
                   SizedBox(height: 16,),
                   Text("    A/c No. : 856492365789",
                     style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),),
                   SizedBox(height: 16,),
                   Text("    IFSC code : xxx5968",
                     style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),),
                   SizedBox(height: 16,),
                   Text("    Current Balance : 5000",
                     style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),),
                   SizedBox(height: 16,),
                 ],
               ),

               SizedBox(height: 30,),
               Center(
                 child: ElevatedButton(onPressed: (){
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context) => paymentPage(),));
                 }, child: Text('Pay')),
               )

             ],
           ),
         ),
       )
    );
  }

}