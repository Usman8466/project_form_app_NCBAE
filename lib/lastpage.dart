import 'package:flutter/material.dart';

class Mylastpage extends StatefulWidget {
  const Mylastpage({super.key});

  @override
  State<Mylastpage> createState() => _MylastpageState();
}

class _MylastpageState extends State<Mylastpage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My First Form',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            top: 270,
            right: 20,
          ),
          child: Column(
            children: [
              Text(
                'Your Final Year Project Allocation Form has been Submitted ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 82, 82, 82)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
