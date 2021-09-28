import 'package:agendaapp/pages/cadastroEmpresa.dart';
import 'package:agendaapp/pages/cadastroCliente.dart';
import 'package:flutter/material.dart';
import '../configs/firebase.dart';

class  escolhaCadastro extends StatelessWidget {

  Firebase firebase=Firebase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            top: 20,left: 60,right: 60,bottom: 20
        ),
        child: Container(
          padding: EdgeInsets.only(
              left: 20,right: 20,bottom: 30
          ),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.all(
                Radius.circular(5)
            ),
          ),
          //contentPadding: EdgeInsets.zero,
          child: ListView(
            children: <Widget>[
              Container(
                height: 60,
                alignment: Alignment.center,
                child: Text(
                  "Escolha de Cadastro",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 60,
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                      Radius.circular(5)
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Cadastro de Empresa",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => cadastroEmpresa(),
                        ),
                      );
                    },
                  ),
                ) ,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                      Radius.circular(5)
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Cadastro de Cliente",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => cadastroCliente(),
                        ),
                      );
                    },
                  ),
                ) ,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/voltar.png"),
                    fit: BoxFit.cover,
                  ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
