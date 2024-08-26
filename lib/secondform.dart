import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:part_login_1/thirdform.dart';

class Mysecondform extends StatefulWidget {
  const Mysecondform({super.key});

  @override
  State<Mysecondform> createState() => _MysecondformState();
}

class _MysecondformState extends State<Mysecondform> {
  final _formKey = GlobalKey<FormState>();
  String _selectedValue = '';
  String? ProgramofStudy;
  String? Semester;
  String? NoofCourseQualified;
  String? ComprehensiveExam;
  String? CGPA;
  String? DeputyControllerExamSignName;
  String? AccountDepartmentClearanceToDate;
  final selectedValueController = TextEditingController();
  final ProgramofStudyController = TextEditingController();
  final SemesterController = TextEditingController();
  final NoofCourseQualifiedController = TextEditingController();
  final ComprehensiveExamController = TextEditingController();
  final CGPAController = TextEditingController();
  final DeputyControllerExamSignNameController = TextEditingController();
  final AccountDepartmentClearanceToDateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    selectedValueController.text = _selectedValue;
    ProgramofStudy;
    Semester;
    NoofCourseQualified;
    ComprehensiveExam;
    CGPA;
    DeputyControllerExamSignName;
    AccountDepartmentClearanceToDate;
    selectedValueController.text = _selectedValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Student Academic/Exam Clearance',
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
              SizedBox(
                height: 30,
              ),
              Text(
                'Academic/Exam Clearance',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 82, 82, 82)),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: ProgramofStudyController,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 227, 228, 228),
                    filled: true,
                    labelText: 'Program of Study',
                    hintText: 'Enter Your Program of Study',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your program of study';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: SemesterController,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 227, 228, 228),
                    filled: true,
                    labelText: 'Semester',
                    hintText: 'Enter Your Semester',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your semester';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: NoofCourseQualifiedController,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 227, 228, 228),
                    filled: true,
                    labelText: 'No. of Course Qualified',
                    hintText: 'Enter Your No. of Course Qualified',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the number of courses qualified';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: ComprehensiveExamController,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 227, 228, 228),
                    filled: true,
                    labelText: 'Comprehensive Exam',
                    hintText: 'Enter Your Comprehensive Exam',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your comprehensive exam details';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: CGPAController,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 227, 228, 228),
                    filled: true,
                    labelText: 'CGPA',
                    hintText: 'Enter Your CGPA',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your CGPA';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: DeputyControllerExamSignNameController,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 227, 228, 228),
                    filled: true,
                    labelText: 'Deputy Controller Exam Sign/Name',
                    hintText: 'Enter Your Deputy Controller Exam Sign/Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the Deputy Controller Exam Sign/Name';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 80,
              ),
              Center(
                child: Container(
                  height: 2,
                  width: 370,
                  color: Color.fromARGB(255, 83, 82, 82),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Selection Part:\n(Select Any One)',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 82, 82, 82)),
              ),
              SizedBox(
                height: 22,
              ),
              TextFormField(
                controller: AccountDepartmentClearanceToDateController,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 227, 228, 228),
                    filled: true,
                    labelText: 'Account Department Clearance (To Date)',
                    hintText: 'Enter Your Account Department Clearance ',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the Account Department Clearance';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Research Type:',
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.black,
                    decorationThickness: 2.0,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 82, 82, 82)),
              ),
              RadioListTile(
                title: Text('Project'),
                value: 'Project',
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value as String;
                  });
                },
              ),
              RadioListTile(
                title: Text('Thesis'),
                value: 'Thesis',
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value as String;
                  });
                },
              ),
              Text('Selected value: $_selectedValue'),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  CollectionReference collRef = FirebaseFirestore.instance
                      .collection('project_form_app_test');
                  collRef.add({
                    'ProgramofStudy': ProgramofStudyController.text,
                    'Semester': SemesterController.text,
                    'NoofCourseQualified': NoofCourseQualifiedController.text,
                    'ComprehensiveExam': ComprehensiveExamController.text,
                    'CGPA': CGPAController.text,
                    'DeputyControllerExamSignName':
                        DeputyControllerExamSignNameController.text,
                    'AccountDepartmentClearanceToDate':
                        AccountDepartmentClearanceToDateController.text,
                    'ResearchType': _selectedValue,
                  });
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Mythirdform()),
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
                  backgroundColor:
                      Color.fromARGB(255, 7, 135, 255), // Background color
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
