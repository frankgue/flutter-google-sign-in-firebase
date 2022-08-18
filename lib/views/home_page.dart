import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_sign/auth_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Google Login"),
        backgroundColor: Colors.green,
      ),
      body: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(FirebaseAuth.instance.currentUser!.displayName!,
            style: const TextStyle(fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87),),
          const SizedBox(
            height: 10,
          ),
          Text(FirebaseAuth.instance.currentUser!.email!,
            style: const TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87),),
          const SizedBox(
            height: 30,
          ),
          MaterialButton(
            padding: EdgeInsets.all(10),
            color: Colors.green,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: const Text(
              'LOG OUT',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            onPressed: () {

            },
          )
        ],
      ),
    ),);
  }

}
