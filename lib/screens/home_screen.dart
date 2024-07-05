import 'package:expense/screens/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(146, 118, 212, 1),
        leading: const Icon(
          Icons.person_2_rounded,
          size: 50,
          color: Colors.white,
        ),
        title: const Text(
          'BUDGET-BLOOMER',
          style: TextStyle(color: Colors.white),
        ),
        actions: const <Widget>[
          Icon(
            Icons.more_vert,
            size: 45,
            color: Colors.white,
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              FirebaseAuth.instance.signOut().then((value) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignInScreen()));
              });
            },
            child: const Text("LogOut")),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.graph_square_fill), label: 'Stats'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF5E61F4),
        onPressed: () {},
        shape: const CircleBorder(),
        child: const Icon(CupertinoIcons.add),
      ),
    );
  }
}
