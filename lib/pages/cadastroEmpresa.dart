import 'package:flutter/material.dart';
import '../configs/firebase.dart';

class  cadastroEmpresa extends StatelessWidget {

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
                  "Cadastro de Empresa",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                //autofocus: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Nome da Empresa",
                    labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 20
                    )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                //autofocus: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "CNPJ",
                    labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 20
                    )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                //autofocus: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Telefone",
                    labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 20
                    )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                //autofocus: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "E-mail",
                    labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 20
                    )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                //autofocus: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Tipo de Serviço",
                    labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 20
                    )
                ),
              ),
              SizedBox(
                height: 30,
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
                    onPressed: () {  },
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Cadastrar Empresa",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
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
