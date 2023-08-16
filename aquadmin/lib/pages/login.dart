import 'package:aquadmin/components/loginbutton.dart';
import 'package:aquadmin/components/textfield.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  login({super.key});

  //text Controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign In Function
  void SignInUser() {
   // Navigator.pushNamed(context, 'client_dash');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SafeArea(
            child: Center(
          child: Column(children: [
            const SizedBox(height: 50),

            Image.asset(
              'lib/images/LogoAquanova.png',
              height: 155,
            ),

            SizedBox(height: 50),

            //Welcome Message
            Text(
              'BIENVENIDO A AQUADMIN',
              style: TextStyle(
                color: Color.fromARGB(255, 16, 105, 207),
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            Textfield(
                controller: usernameController,
                hintText: 'Correo',
                obscureText: false),

            const SizedBox(height: 15),

            Textfield(
                controller: passwordController,
                hintText: 'Contraseña',
                obscureText: true),

            const SizedBox(height: 15),
            //Forgot my Password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Ha olvidado su contraseña?',
                    style: TextStyle(color: Colors.grey[600], fontSize: 18),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),
            //Log In Btn
            Loginbutton(
              onTap: () {
                Navigator.pushNamed(context, 'client_dash');
              },
            ),
          ]),
        )));
  }
}
