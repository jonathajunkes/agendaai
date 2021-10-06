import 'package:agendaapp/configs/Validador.dart';
import 'package:flutter/material.dart';
import '../configs/firebase.dart';

class  cadastroCliente extends StatelessWidget {
  late String _nomeCliente;
  late String _cpfCliente;
  late String _telefoneCliente;
  late String _emailCliente;
  late String _sexoCliente;
  late String _datNascimentoCliente;
  late String _passwordCliente;
  final _formKey = GlobalKey<FormState>();

  final _nomeController = TextEditingController(text: '');
  final _cpfController = TextEditingController(text: '');
  final _telefoneController = TextEditingController(text: '');
  final _sexoController = TextEditingController(text: '');
  final _emailController = TextEditingController(text: '');
  final _datNascimentoController = TextEditingController(text: '');
  final _passwordController = TextEditingController(text: '');

  Firebase firebase = Firebase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            top: 10,left: 60,right: 60,bottom: 5
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
                  "Cadastro de Cliente",
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
                    key: _formKey,
                child: Column(
                children: [
                TextFormField(
                onSaved: (value) {
                _nomeCliente = value!;
                },
                controller: _nomeController,
                //autofocus: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Nome Cliente",
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
                      _cpfCliente = value!;
                    },
                    controller: _cpfController,
                //autofocus: true,
                keyboardType: TextInputType.number,
                    validator: (_cpfCliente) {
                      // Aqui entram as validações
                      return Validador()
                          .add(Validar.CPF, msg: 'CPF Inválido')
                          .add(Validar.OBRIGATORIO, msg: 'Campo obrigatório')
                          .minLength(11)
                          .maxLength(11)
                          .valido(_cpfCliente,clearNoNumber: true);
                    },
                    decoration: InputDecoration(
                    labelText: "CPF",
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
                      _telefoneCliente = value!;
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
                      _emailCliente = value!;
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
                      _passwordCliente = value!;
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
                      _sexoCliente = value!;
                    },
                    controller: _sexoController,
                //autofocus: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Sexo",
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
                      _datNascimentoCliente = value!;
                    },
                    controller: _datNascimentoController,
                //autofocus: true,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                    labelText: "Data de Nascimento",
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
                    },
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              firebase.createNewUser(_cpfController.text, _emailController.text, _nomeController.text, _telefoneController.text, _datNascimentoController.text, _sexoController.text, _passwordController.text);

                            }
                          },
                          child: Text(
                          "Cadastrar Cliente",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.left,
                        ),
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

