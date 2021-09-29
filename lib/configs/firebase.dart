import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';
import 'package:firebase_database/firebase_database.dart';

class Firebase {
  final dbRef = FirebaseDatabase.instance;

  static const _firebaseUrl = 'https://agendaai-85f9f-default-rtdb.firebaseio.com/';

  bool call_senha(String key,String pwd){
    String senhaBD = '';
    String senha = gerarHASH(pwd);
    String cpf = '';
    bool flag = false;
    //var db = FirebaseDatabase.instance.reference().child("Users").orderByKey().equalTo(key);
    var db = FirebaseDatabase.instance.reference().child("Users").orderByChild("email").equalTo(key);
    db.once().then((DataSnapshot snapshot){
    Map<dynamic, dynamic> values = snapshot.value;
      values.forEach((key,values) {
        cpf = key;
        senhaBD = values["senha"];
        print(senhaBD);
        print(senha);
        if(senha==senhaBD){
          print("True");
        }
      });

    });

    if(senhaBD==senha){
      flag = true;
    }
    return flag;
  }

  call_child_db(String key){
    //var db = FirebaseDatabase.instance.reference().child("Users").orderByKey().equalTo(key);
    var db = FirebaseDatabase.instance.reference().child("Users").orderByChild("email").equalTo(key);
    db.once().then((DataSnapshot snapshot){
      Map<dynamic, dynamic> values = snapshot.value;
      values.forEach((key,values) {
        print(key);
        print(values["nome"]);
        print(values["email"]);
        print(values["senha"]);
      });
    });
  }

  Future<void> createNewUser(String cpf,String email,String nome,String telefone, String dataNascimento,String sexo,String senha)async {
    final response = await http.put(
      Uri.parse(_firebaseUrl+"Users/$cpf.json"),
      headers: {
        'Content-Type' : 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'nome': nome,
        'telefone': telefone,
        'nascimento': dataNascimento,
        'sexo': sexo,
        'email': email,
        'senha': gerarHASH(senha)
      }),
    );
    //print(response.body);
  }

  Future<void> createNewCompany(String cnpj,String email,String nome,String telefone, String tipoServico,String senha)async {
    final response = await http.put(
      Uri.parse(_firebaseUrl+"companies/$cnpj.json"),
      headers: {
        'Content-Type' : 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'nome': nome,
        'telefone': telefone,
        'tipoServico': tipoServico,
        'email': email,
        'senha': gerarHASH(senha)
      }),
    );
    //print(response.body);
  }

  String gerarHASH(String texto){
    var bytess = utf8.encode(texto);
    var hashs = sha256.convert(bytess);
    return hashs.toString();
  }

  bool validaUser(String emailID, String password) {
    return call_senha(emailID,password);
  }


}