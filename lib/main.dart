import 'package:flutter/material.dart';
import 'com.wolfsInn.signUp/signUp.dart';
import 'com.wolfsInn.app/home.dart';

void main()
{
  runApp(MaterialApp(home: Aplicativo()));
}

class Aplicativo extends StatelessWidget {
  const Aplicativo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amberAccent,title: Align(child: Text("MeuApp", style: TextStyle(color: Colors.black, fontSize: 30)))),

      body: Center(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Usuário",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  hintText: 'Insira seu nome de usuário',
                ),
              ),

              Text(""),

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Senha",
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                  hintText: 'Insira a sua senha',
                ),
              ),

              Text(""),

              Container(
                color: Colors.amberAccent, width: 100,
                child: TextButton(
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (Context)=>Home()));},
                    child: Text("Entrar",style: TextStyle(color: Colors.black, fontSize: 25))
                ),
              ),
              
              Container(
                child: TextButton(
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (Context)=>SignUp()));},child: Text("Novo? Cadastre-se!"),),
              )

            ],
          )
        ),
      ),
    );
  }
}
