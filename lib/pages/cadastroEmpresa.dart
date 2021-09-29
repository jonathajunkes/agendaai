import 'package:flutter/material.dart';
import '../configs/firebase.dart';

class  cadastroEmpresa extends StatelessWidget {
  late String _nomeEmpresa;
  late String _cnpjEmpresa;
  late String _telefoneEmpresa;
  late String _emailEmpresa;
  late String _tipoServicoEmpresa;
  late String _senhaEmpresa;

  final _formKey = GlobalKey<FormState>();

  final _nomeController = TextEditingController(text: '');
  final _cnpjController = TextEditingController(text: '');
  final _telefoneController = TextEditingController(text: '');
  final _emailController = TextEditingController(text: '');
  final _tipoServicoController = TextEditingController(text: '');
  final _passwordController = TextEditingController(text: '');

  Firebase firebase = Firebase();

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
              Form(
              child: Column(
              children: [
                TextFormField(
                  onSaved: (value) {
                    _nomeEmpresa = value!;
                  },
                  controller: _nomeController,
                //autofocus: true,
                keyboardType: TextInputType.text,
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
                  onSaved: (value) {
                    _cnpjEmpresa = value!;
                  },
                  controller: _cnpjController,
                //autofocus: true,
                keyboardType: TextInputType.number,
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
                  onSaved: (value) {
                    _telefoneEmpresa = value!;
                  },
                  controller: _telefoneController,
                //autofocus: true,
                keyboardType: TextInputType.phone,
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
                  onSaved: (value) {
                    _emailEmpresa = value!;
                  },
                  controller: _emailController,
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
                  onSaved: (value) {
                    _senhaEmpresa = value!;
                  },
                  controller: _passwordController,
                  //autofocus: true,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Senha",
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
                  onSaved: (value) {
                    _tipoServicoEmpresa = value!;
                  },
                  controller: _tipoServicoController,
                //autofocus: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Tipo de Serviço",
                    labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 20
                    )
                ),
              ),
              ],
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
                    onPressed: () {
                      firebase.createNewCompany(_cnpjController.text, _emailController.text, _nomeController.text, _telefoneController.text, _tipoServicoController.text, _passwordController.text);
                    },
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
