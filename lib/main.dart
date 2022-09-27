import 'package:flutter/material.dart';
import './login.dart';
import './signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SERVICES'),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 185, 81),
        body: SafeArea(
            child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Hello There!",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 40),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Automatic identity verification which enable you to verify your identity",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey[700], fontSize: 15),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 3,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/logo.png'))),
                          ),
                          MaterialButton(
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  // Builder for the nextpage
                                  // class's constructor.
                                  builder: (context) => LoginPage()));
                            },
                            color: Colors.indigoAccent[400],
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(40)),
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white70),
                            ),
                          ),
                          MaterialButton(
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  // Builder for the nextpage
                                  // class's constructor.
                                  builder: (context) => SignupPage()));
                            },
                            color: Colors.redAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            child: const Text(
                              "Sign UP",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]))));
  }
}
