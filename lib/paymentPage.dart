import 'package:basic_banking_app/payment_splashPage.ddart.dart';
import 'package:basic_banking_app/payment_success_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class paymentPage extends StatefulWidget{
  @override
  State<paymentPage> createState() => _paymentPageState();
}


class _paymentPageState extends State<paymentPage> {

  var payController = TextEditingController();
  var result = ' ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
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
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 200,),
              Padding(
                padding: const EdgeInsets.all(21.0),
                child: TextField(
                  controller: payController,
                  decoration: InputDecoration(
                    label: Text('Enter Amount in rupees',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    prefixIcon: Icon(Icons.currency_rupee),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.white
                      )
                    )
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(height: 15,),
              Center(
                child: ElevatedButton(onPressed:() async{

                  var input =double.parse(payController.text.toString());

                  if(input == null || input <= 0 ) {

                   result = 'Please enter the amount!!';
                   setState(() {

                   });
                  }else{
                    await Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SplashPage(),));
                  }
                },child: Text('Pay')),
              ),
              SizedBox(
                height: 12,
              ),
              Text(result,style: TextStyle(fontSize: 16),),
            ],
          ),
        ),
      ),
    );
  }
}