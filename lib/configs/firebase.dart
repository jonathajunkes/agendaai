import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';
import 'package:firebase_database/firebase_database.dart';
//import 'package:cpfcnpj/cpfcnpj.dart';

class Firebase {
  final dbRef = FirebaseDatabase.instance;
  bool flag = false;
  static const _firebaseUrl = 'https://agendaai-85f9f-default-rtdb.firebaseio.com/';

  bool call_senha(String key,String pwd){
    String senhaBD = '';
    String senha = pwd;
    String cpf = '';
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
          flag=true;
        }
      });

    });
    if(flag==true){
      print("entrou aqui!");
    }
    print ('call senha é $flag');
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
    var validar = call_senha(emailID,password);
    //print(validar);
    return validar;
  }

  /*bool validarCPF(String cpf){
    return CPF.isValid(cpf);
  }
  bool validarCNPJ(String cnpj){
    return CNPJ.isValid(cnpj);
  }

  String formatarCPF(String cpf){
    return CPF.format(cpf); // 123.717.730-85
  }
  String formatarCNPJ(String cnpj){
    return CNPJ.format(cnpj); // 43.814.971/0001-88

  }
  bool isEmail(String em) {

    String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = new RegExp(p);

    return regExp.hasMatch(em);
  }*/
}