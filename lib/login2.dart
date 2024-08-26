import 'package:flutter/material.dart';

class Mylogin2 extends StatefulWidget {
  const Mylogin2({super.key});

  @override
  State<Mylogin2> createState() => _Mylogin2State();
}

class _Mylogin2State extends State<Mylogin2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/register.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 85, top: 140),
              child: Text(
                'Welcome\nNCABE',
                style: TextStyle(color: Colors.red, fontSize: 40),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5, right: 35, left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.blue.shade100,
                          filled: true,
                          hintText: 'MTN NO',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                    ),

                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.blue.shade100,
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                    ),

                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sign In',
                          style: TextStyle(
                              color: Color(0xFF00838F),
                              fontSize: 27,
                              fontWeight: FontWeight.w700),),

                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xFF84FFFF),
                          child: IconButton(
                            onPressed: (){
                              // Navigator.pushNamed(context, 'login2');
                            },
                            icon: Icon(Icons.arrow_forward),
                          ),
                        )

                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
