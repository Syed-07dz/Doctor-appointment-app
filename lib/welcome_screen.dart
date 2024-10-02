import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_screen.dart';
import 'package:flutter_application_1/navbar_roots.dart';
import 'package:flutter_application_1/signup_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 15),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(
                     builder: (context) => NavbarRoots(), // Replace with your next screen
                  ));
                },
                child: const Text(
                  "SKIP",
                  style: TextStyle(
                    color: Color(0xFF7165D6),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
             padding: const EdgeInsets.all(20),
             child: Column(
               children: [
                 Image.asset("images/doctors.png", height: 200, width: 200,),
                 
               ],
             ), 
           ),
            const SizedBox(height: 50),
            const Text(
              "Doctors Appointment",
              style: TextStyle(
                color: Color(0xFF7165D6),
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 1, 
                wordSpacing: 2,
              )
            ),
            const SizedBox(height: 10), 
            const Text(
              "Appoint your Doctor",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 1, 
                wordSpacing: 2,
              )
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: const Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                     Navigator.push(context, MaterialPageRoute(
                        builder: (context) => LoginScreen(), // Replace with your next screen
                       ));
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    )
                  )
                ),
                Material(
                  color: const Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                       Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SignUpscreen(), // Replace with your next screen
                       ));
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    )
                  )
                )
              ],
            ),
          ],
        ),
        
      ),
    )
    );
  }
}

