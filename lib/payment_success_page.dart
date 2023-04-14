import 'dart:async';

import 'package:basic_banking_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class paymentSuccessful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Payment Success'),
          backgroundColor: Colors.cyan,
        ),
        body: Container(
          width: double.infinity,
          color: Colors.green,
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Text('Thank You',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,
                  color: Colors.white)),

              SizedBox(
                height: 45,
              ),
              ClipRRect(
                child: Image.asset('assets/images/payment-successful.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.fill,
                ),
              ),
             /* Container(

                child: Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Center(
                      child: Image.asset('assets/images/payment.jpg')),
                ),
              ),*/
              SizedBox(height: 30,),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyHomePage(),
                        ));
                  },
                  child: Text('Continue'))
            ],
          ),
        ));
  }
}
