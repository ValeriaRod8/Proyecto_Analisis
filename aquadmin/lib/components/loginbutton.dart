import 'package:flutter/material.dart';

class Loginbutton extends StatelessWidget {
  final Function()? onTap;


  const Loginbutton({super.key, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(5)),
      child: const Center(
          child: Text(
        "Iniciar Sesion",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      )),
      )
    );
  }
}
