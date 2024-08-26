import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:part_login_1/selectformpage.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({super.key});

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  final _formKey = GlobalKey<FormState>();
  String? mtnNumber;
  String? password;
  final MTNNOController = TextEditingController();
  final PasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    MTNNOController;
    PasswordController;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/NCBAE 3.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 8, top: 190),
              child: Text(
                'National College Business \nof Administration & Economics,Lahore\n Sub Campus Multan',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 35,
                    left: 35),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        maxLength: 15,
                        controller: MTNNOController,
                        decoration: InputDecoration(
                            fillColor: Colors.blue.shade100,
                            filled: true,
                            hintText: 'MTN NO',
                            labelText: 'MTN NO',
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your MTN number';
                          } else if (value.length < 10) {
                            return 'MTN number should be at least 10 digits';
                          }
                          return null;
                        },
                        onSaved: (value) => mtnNumber = value,
                      ),
                      SizedBox(
                        height: 38,
                      ),
                      TextFormField(
                        maxLength: 15,
                        controller: PasswordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.blue.shade100,
                            filled: true,
                            hintText: 'Password',
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.email_rounded),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          } else if (value.length < 8) {
                            return 'Password should be at least 8 characters';
                          }
                          return null;
                        },
                        onSaved: (value) => password = value,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextButton.icon(
                        onPressed: () {
                          CollectionReference collRef = FirebaseFirestore
                              .instance
                              .collection('project_form_app_test');
                          collRef.add({
                            'MTN': MTNNOController.text,
                            'Password': PasswordController.text,
                          });
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Myselectformpage()),
                            );
                          }
                        },
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.yellow,
                            elevation: 5,

                            // adjusting shadow color
                            shadowColor: Colors.yellow,
                            padding: EdgeInsets.all(5),
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                            backgroundColor: Colors.blue,
                            textStyle: const TextStyle(
                                fontSize: 24, fontStyle: FontStyle.normal)),
                        icon: const Icon(Icons.input_outlined),
                        label: const Text('Sign In'),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
