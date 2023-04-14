import 'package:basic_banking_app/view_all_customers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Basic Banking App'),
        leading: Icon(FontAwesomeIcons.bank),
        backgroundColor: Colors.cyan,
      ),
      body:Container(
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
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            ClipRRect(
                child: Image.asset('assets/images/mobile-banking.png',
                width: 200,
                height: 200,
                fit: BoxFit.fill,
                ),
            ),
            SizedBox(
              height: 45,
            ),
            Text('Welcome to Mobile Banking',style: TextStyle(
                fontSize: 24,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 80,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => viewCustomers(),));
              setState(() {

              });
            }, child: Text('Transfer Money')),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.cyan,
      items: [
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.creditCard),label: 'Cards'),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.cog),label: 'Settings'),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.chartBar),label: 'Overview'),

      ],
    ),
    );
  }
}
