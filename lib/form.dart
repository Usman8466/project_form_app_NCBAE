import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:part_login_1/secondform.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  String? Name;
  String? RegistrationNo;
  String? Session;
  String? Department;
  String? CellNumber;
  String? EmailID;
  final NameController = TextEditingController();
  final RegistrationNoController = TextEditingController();
  final SessionController = TextEditingController();
  final DepartmentController = TextEditingController();
  final CellNumberController = TextEditingController();
  final EmailIDController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Name;
    RegistrationNo;
    Session;
    Department;
    CellNumber;
    EmailID;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Student Personal Information',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.only(
          left: 20,
          top: 12,
          right: 20,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                'Request for Research/Project Supervisor Allocation',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 82, 82, 82)),
              ),
              // Sizedbox = Space
              SizedBox(
                height: 15,
              ),

              Center(
                child: Container(
                  height: 2,
                  width: 370,
                  color: Color.fromARGB(255, 83, 82, 82),
                ),
              ),
              // Sizedbox = Space
              SizedBox(
                height: 30,
              ),

              Text(
                'Personal Information',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 82, 82, 82)),
              ),
              // Sizedbox = Space
              SizedBox(
                height: 10,
              ),

              TextFormField(
                controller: NameController,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 227, 228, 228),
                    filled: true,
                    labelText: 'Name',
                    hintText: 'Enter Your Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              // Sizedbox = Space
              SizedBox(
                height: 40,
              ),

              TextFormField(
                controller: RegistrationNoController,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 227, 228, 228),
                    filled: true,
                    labelText: 'Registration No.',
                    hintText: 'Enter Your Registration No.',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your registration number';
                  }
                  return null;
                },
              ),
              // Sizedbox = Space
              SizedBox(
                height: 40,
              ),

              TextFormField(
                controller: SessionController,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 227, 228, 228),
                    filled: true,
                    labelText: 'Session',
                    hintText: 'Enter Your Session',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your session';
                  }
                  return null;
                },
              ),
              // Sizedbox = Space
              SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: DepartmentController,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 227, 228, 228),
                    filled: true,
                    labelText: 'Department',
                    hintText: 'Enter Your Department',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your department';
                  }
                  return null;
                },
              ),
              // Sizedbox = Space
              SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: CellNumberController,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 227, 228, 228),
                    filled: true,
                    labelText: 'Cell Number',
                    hintText: 'Enter Your Cell Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your cell number';
                  }
                  return null;
                },
              ),

              // Sizedbox = Space
              SizedBox(
                height: 40,
              ),

              // Email Placeholder
              TextFormField(
                controller: EmailIDController,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 227, 228, 228),
                    filled: true,
                    labelText: 'Email ID',
                    hintText: 'Enter Your Email ID',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email ID';
                  }
                  return null;
                },
              ),

              // Sizedbox = Space
              SizedBox(
                height: 40,
              ),

              //Button
              ElevatedButton(
                onPressed: () {
                  CollectionReference collRef = FirebaseFirestore.instance
                      .collection('project_form_app_test');
                  collRef.add({
                    'Name': NameController.text,
                    'Registration NO': RegistrationNoController.text,
                    'Session': SessionController.text,
                    'Department': DepartmentController.text,
                    'Cell Number': CellNumberController.text,
                    'Email ID': EmailIDController.text,
                  });
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Mysecondform()),
                    );
                  }
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 249, 187, 0)),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 7, 135, 255),
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
