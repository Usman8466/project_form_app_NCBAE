import 'package:flutter/material.dart';
import 'package:part_login_1/form%20df.dart';
import 'package:part_login_1/Form.dart';

class Myselectformpage extends StatefulWidget {
  const Myselectformpage({super.key});
  @override
  State<Myselectformpage> createState() => _MyselectformpageState();
}

class _MyselectformpageState extends State<Myselectformpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "NCBAE PDF Form",
          style: TextStyle(color: Colors.yellow),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Color.fromARGB(0, 245, 230, 230),
        padding: EdgeInsets.only(left: 25, top: 300),
        child: Column(
          children: [
            Container(
              child: TextButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MyForm()),
                  );
                },
                style: TextButton.styleFrom(
                    foregroundColor: Colors.yellow,
                    elevation: 5,
                    shadowColor: Colors.yellow,
                    padding: EdgeInsets.all(5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    backgroundColor: Colors.blue,
                    textStyle: const TextStyle(
                        fontSize: 24, fontStyle: FontStyle.normal)),
                icon: const Icon(Icons.input_outlined),
                label: const Text('Online Final Year Project Form'),
              ),
            ),
            SizedBox(height: 20), // Add a SizedBox for spacing
            Container(
              child: TextButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MYformdf()),
                  );
                },
                style: TextButton.styleFrom(
                    foregroundColor: Colors.yellow,
                    elevation: 5,
                    shadowColor: Colors.yellow,
                    padding: EdgeInsets.all(5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    backgroundColor: Colors.blue,
                    textStyle: const TextStyle(
                        fontSize: 24, fontStyle: FontStyle.normal)),
                icon: const Icon(Icons.input_outlined),
                label: const Text('PDF Final Year Project Form'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
