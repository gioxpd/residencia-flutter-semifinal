import 'package:flutter/material.dart';
import 'package:teste_1/api_login.dart';
// ignore: unused_import
import 'package:teste_1/home_page.dart';

class LoginPage extends StatefulWidget {
  
  

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String usuario = '';
  String senha = '';
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column (
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [


Image.network('https://images.vexels.com/media/users/3/157346/isolated/lists/25829f6b8d6ca72aee817a8448ab7024-icone-de-livro-aberto.png'),
                          

                        TextField(
                          onChanged: (text) {
                            usuario = text;
                          },
                          keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Usuário'  ,border: OutlineInputBorder(),
              ),
                      ),
                      SizedBox(height: 10),
                       TextField(
                        onChanged: (text) {
                          senha = text;
                        },
                        obscureText: true,
              decoration: InputDecoration(labelText: 'Senha'  ,border: OutlineInputBorder()
              ),
                  ),
                  SizedBox(height: 15,),                      
          ElevatedButton(onPressed: () {
            logar(context, usuario, senha);
          }, child: Text('Entrar'))  ], 
                    ),
            ),
      ),
  );
  }
}