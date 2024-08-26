import 'package:flutter/material.dart';

class Myformfirst extends StatefulWidget {
  const Myformfirst({super.key});

  @override
  State<Myformfirst> createState() => _MyformfirstState();
}

class _MyformfirstState extends State<Myformfirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Online NCBA&E form',
          style: TextStyle(color: Colors.amber, fontSize: 20),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              const SizedBox(height: 13),
              Center(
                child: Text(
                  'Request for Research/Project Supervisor Allocation Academic/Exam Clearance',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 20, 3, 3)),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Center(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: 1.8,
                      width: 1300,
                      color: Color.fromARGB(255, 83, 82, 82),
                      margin: EdgeInsets.only(bottom: 25.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 13,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
