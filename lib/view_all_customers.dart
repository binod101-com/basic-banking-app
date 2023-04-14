import 'package:basic_banking_app/detailPage.dart';
import 'package:basic_banking_app/paymentPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class viewCustomers extends StatefulWidget{
  @override
  State<viewCustomers> createState() => _viewCustomersState();
}

class _viewCustomersState extends State<viewCustomers> {

  var arrContats = [
    'Vijay','Jaydev','Roshan','Avinash','Bipul',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
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
        child: ListView.separated(itemBuilder: (context,index){
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListTile(
                  leading:  CircleAvatar(backgroundImage: AssetImage('assets/images/boy.jpg'),
                  ),
                  title: InkWell(
                    onTap: () async{
                    await  Navigator.push(context,
                          MaterialPageRoute(builder: (context) => detailPage(),));
                    },
                      child: Text(arrContats[index])),
                  subtitle: Text('+91-xxxxxxxxxx'),
                  trailing: ElevatedButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => paymentPage(),));
                    setState(() {

                    });
                  }, child: Text('Pay'))
                ),
              ],
            ),
          );
        }, separatorBuilder: (context,index){
          return Divider(height: 20,);
        }, itemCount: arrContats.length,),
      )

    );
  }
}