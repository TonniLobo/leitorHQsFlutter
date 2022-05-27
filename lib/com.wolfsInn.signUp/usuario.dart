class Usuario
{
  static String? nome;
  static String? senha;
  static String? emailAdress;

  void SignIn(String name, String password, String email){
    nome = name;
    senha = password;
    emailAdress = email;
    print("registrado!");
  }
  void LogIn(String name, String password){
    if(nome == name && senha == password){

    }
  }
}