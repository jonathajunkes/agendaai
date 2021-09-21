import 'package:flutter/material.dart';
import '../configs/firebase.dart';


class  LoginPage extends StatelessWidget {
  late String _emailId;
  late String _password;
  final _formKey = GlobalKey<FormState>();
  final _emailIdController = TextEditingController(text: '');
  final _passwordController = TextEditingController(text: '');

  Firebase firebase = Firebase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/fundoLogin.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.only(
            top: 20, left: 60, right: 60, bottom: 20
        ),
        child: Container(
          padding: const EdgeInsets.only(
              left: 40, right: 40, bottom: 30
          ),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: const BorderRadius.all(
                Radius.circular(5)
            ),
          ),
          //contentPadding: EdgeInsets.zero,
          child: ListView(
            children: <Widget>[
              Container(
                height: 60,
                alignment: Alignment.center,
                child: const Text(
                  "ENTRAR",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                alignment: Alignment.center,
                child: const Text(
                  "Agendái-vos agora!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      onSaved: (value) {
                        _emailId = value!;
                      },
                      controller: _emailIdController,
                      //autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          labelText: "Nome de Usuário",
                          labelStyle: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.w400,
                              fontSize: 20
                          )
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      onSaved: (value) {
                        _password = value!;
                      },
                      controller: _passwordController,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: const InputDecoration(
                          labelText: "Senha",
                          labelStyle: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: () {},
                  child: const Text(
                    "Recuperar Senha",
                    style: TextStyle(
                        color: Colors.lightBlue
                    ),
                    textAlign: TextAlign.right,
                  ),

                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 60,
                alignment: Alignment.bottomLeft,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                      Radius.circular(5)
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const <Widget>[
                        Text(
                          "Entrar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    onPressed: () =>
                    {
                      //firebase.call_child_db("junkes1995@gmail.com")
                      firebase.createNewUser("12905361980", "braincz@gmail.com", "Braian C. Zapelli.", "123", "10/06/2002", "M", "semsenha")
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  height: 40,
                  child: FlatButton(
                      child: const Text(
                        "Cadastre-se",
                        style: TextStyle(
                            color: Colors.lightBlue
                        ),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {}
                  )
              ),

            ],
          ),
        ),
      ),
    );
  }
}
