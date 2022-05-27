import 'package:flutter/material.dart';
import 'package:leitor/com.wolfsInn.signUp/usuario.dart';

void main()
{
  runApp(MaterialApp(home: SignUp()));
}

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amberAccent,title: Text("Sign Up",style: TextStyle(color: Colors.black, fontSize: 24))),

      body: Center(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("res/user.png"),width: 100,),
              Text("Insira um nome de Usuário: ",style: TextStyle(fontSize: 20),),

              Text(""),

              TextFormField(
                decoration: InputDecoration(
                  labelText: "Nome do Usuário",
                  border: OutlineInputBorder()
                ),
              ),

              Text(""),

              Text("Insira uma senha válida: ",style: TextStyle(fontSize: 20),),

              Text(""),

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "senha",
                    border: OutlineInputBorder(),
                ),
              ),

              Text(""),

              Text("Insira o seu E-mail: ",style: TextStyle(fontSize: 20)),

              Text(""),

              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "E-mail",
                    border: OutlineInputBorder()
                ),
              ),

              Text(""),
            ],
          ),
        ),
      ),
    );
  }
}
