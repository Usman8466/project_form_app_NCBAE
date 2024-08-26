import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:part_login_1/lastpage.dart';

class Mythirdform extends StatefulWidget {
  const Mythirdform({super.key});

  @override
  State<Mythirdform> createState() => _MythirdformState();
}

class _MythirdformState extends State<Mythirdform> {
  final _formKey = GlobalKey<FormState>();
  String? AreaofSpecialization;
  String? ProposedProjectTopic;
  String? NameofSupervisor;
  String? CellNumber;
  String? EmailID;
  String? ResearchStartDate;
  String? ExpectedResearchCompletionDate;
  String? ScholarsNameSignature;
  String? SupervisorNameSignature;
  String? HeadofDepartmentNameSignature;
  final AreaofSpecializationController = TextEditingController();
  final ProposedProjectTopicController = TextEditingController();
  final NameofSupervisorController = TextEditingController();
  final CellNumberController = TextEditingController();
  final EmailIDController = TextEditingController();
  final ResearchStartDateController = TextEditingController();
  final ExpectedResearchCompletionDateController = TextEditingController();
  final ScholarsNameSignatureController = TextEditingController();
  final SupervisorNameSignatureController = TextEditingController();
  final HeadofDepartmentNameSignatureController = TextEditingController();

  @override
  void initState() {
    super.initState();
    AreaofSpecialization;
    ProposedProjectTopic;
    NameofSupervisor;
    CellNumber;
    EmailID;
    ResearchStartDate;
    ExpectedResearchCompletionDate;
    ScholarsNameSignature;
    SupervisorNameSignature;
    HeadofDepartmentNameSignature;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Student Project Allocation Details',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 12, right: 20),
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
                SizedBox(height: 15),
                Center(
                  child: Container(
                    height: 2,
                    width: 370,
                    color: Color.fromARGB(255, 83, 82, 82),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Project Allocation Details',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 82, 82, 82)),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: AreaofSpecializationController,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 227, 228, 228),
                    filled: true,
                    labelText: 'Area of Specialization',
                    hintText: 'Enter Your Area of Specialization',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your area of specialization';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 40),
                TextFormField(
                  controller: ProposedProjectTopicController,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 227, 228, 228),
                    filled: true,
                    labelText: 'Proposed Project Topic',
                    hintText: 'Enter Your Proposed Project Topic',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your proposed project topic';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 40),
                TextFormField(
                  controller: NameofSupervisorController,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 227, 228, 228),
                    filled: true,
                    labelText: 'Name of Supervisor',
                    hintText: 'Enter Your Name of Supervisor',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the name of your supervisor';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 40),
                TextFormField(
                  controller: CellNumberController,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 227, 228, 228),
                    filled: true,
                    labelText: 'Cell Number',
                    hintText: 'Enter Your Cell Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your cell number';
                    }
                    if (!RegExp(r'^\d{11}$').hasMatch(value)) {
                      return 'Please enter a valid 11-digit phone number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 40),
                TextFormField(
                  controller: EmailIDController,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 227, 228, 228),
                    filled: true,
                    labelText: 'Email ID',
                    hintText: 'Enter Your Email ID',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email ID';
                    }
                    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                        .hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 40),
                TextFormField(
                  controller: ResearchStartDateController,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 227, 228, 228),
                    filled: true,
                    labelText: 'Research Start Date',
                    hintText: 'Enter Your Research Start Date',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  keyboardType: TextInputType.datetime,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your research start date';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 40),
                TextFormField(
                  controller: ExpectedResearchCompletionDateController,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 227, 228, 228),
                    filled: true,
                    labelText: 'Expected Research Completion Date',
                    hintText: 'Enter Your Expected Research Completion Date',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  keyboardType: TextInputType.datetime,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your expected research completion date';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 80),
                Center(
                  child: Container(
                    height: 2,
                    width: 370,
                    color: Color.fromARGB(255, 83, 82, 82),
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  'Name/Signature Section:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 82, 82, 82)),
                ),
                SizedBox(height: 25),
                TextFormField(
                  controller: ScholarsNameSignatureController,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 227, 228, 228),
                    filled: true,
                    labelText: 'Scholars Name/Signature',
                    hintText: 'Enter Your Scholars Name/Signature',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your scholars name/signature';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 40),
                TextFormField(
                  controller: SupervisorNameSignatureController,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 227, 228, 228),
                    filled: true,
                    labelText: 'Supervisor Name/Signature',
                    hintText: 'Enter Your Supervisor Name/Signature',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your supervisor name/signature';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 40),
                TextFormField(
                  controller: HeadofDepartmentNameSignatureController,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 227, 228, 228),
                    filled: true,
                    labelText: 'Head of Department Name/Signature',
                    hintText: 'Enter Your Head of Department Name/Signature',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your head of department name/signature';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    CollectionReference collRef = FirebaseFirestore.instance
                        .collection('project_form_app_test');
                    collRef.add({
                      'Area of Specialization':
                          AreaofSpecializationController.text,
                      'ProposedProjectTopic':
                          ProposedProjectTopicController.text,
                      'NameofSupervisor': NameofSupervisorController.text,
                      'CellNumber': CellNumberController.text,
                      'EmailID': EmailIDController.text,
                      'ResearchStartDate': ResearchStartDateController.text,
                      'ExpectedResearchCompletionDate':
                          ExpectedResearchCompletionDateController.text,
                      'ScholarsNameSignature':
                          ScholarsNameSignatureController.text,
                      'SupervisorNameSignature':
                          SupervisorNameSignatureController.text,
                      'HeadofDepartmentNameSignature':
                          HeadofDepartmentNameSignatureController.text,
                    });
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Mylastpage()),
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
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
