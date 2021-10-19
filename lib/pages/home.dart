import 'package:flutter/material.dart';
import '../../configs/firebase.dart';

class  Home extends StatelessWidget {
  Firebase firebase = Firebase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // or Row or Wrap
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 80,
              ),
              Image.asset(
                'assets/1.png',
                height: 100,
                width: 100,
              ),
              const Text(
                "Petshop",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.right,
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/2.png',
                height: 100,
                width: 100,
              ),
              const Text(
                "Barbearia",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.right,
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/3.png',
                height: 100,
                width: 100,
              ),
              const Text(
                "Pintor",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.right,
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/4.png',
                height: 100,
                width: 100,
              ),
              const Text(
                "Eletrecista",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 80,
              ),
              Image.asset(
                'assets/5.png',
                height: 100,
                width: 100,
              ),
              const Text(
                "Fotógrafo",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.right,
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/6.png',
                height: 100,
                width: 100,
              ),
              const Text(
                "Dentista",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.right,
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/7.png',
                height: 100,
                width: 100,
              ),
              const Text(
                "Músico",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.right,
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/8.png',
                height: 100,
                width: 100,
              ),
              const Text(
                "Agropecuária",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 80,
              ),
              Image.asset(
                'assets/9.png',
                height: 100,
                width: 100,
              ),
              const Text(
                "Pedreiro",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.right,
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/10.png',
                height: 100,
                width: 100,
              ),
              const Text(
                "Mecânico",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.right,
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/11.png',
                height: 100,
                width: 100,
              ),
              const Text(
                "Farmácia",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.right,
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/12.png',
                height: 100,
                width: 100,
              ),
              const Text(
                "Escolar",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          /*Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/categorias.jpeg',
                    height: 120,
                    width: 120,
                  ),
                  Image.asset(
                    'assets/categorias.jpeg',
                    height: 120,
                    width: 120,
                  ),
                  Image.asset(
                    'assets/categorias.jpeg',
                    height: 120,
                    width: 120,
                  ),
                ],
              ),*/
        ],
      ),

    );
  }
}
