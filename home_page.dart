import 'package:flutter/material.dart';
import 'package:teste_1/Lidos.dart';
import 'package:teste_1/app_controller.dart';
import 'package:teste_1/crud.dart';
import 'package:teste_1/favoritos.dart';
import 'package:teste_1/login_page.dart';


class HomePage extends StatefulWidget {  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(accountName: Text('Usuário'), accountEmail: Text('Email')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Logout'),
              subtitle: Text('Finalizar Sessão'),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ((context) => LoginPage())));
              },
            )
          ],
        ),
      ),



      appBar: AppBar(
        actions: [IconButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => CrudPage()));
        }, icon: Icon(Icons.library_books)),
          CustomSwitch(),
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
          ],
      ),
      
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          RichText(text: TextSpan(text: 'Favoritos', style: TextStyle(fontWeight: FontWeight.bold, 
          color: Colors.deepPurple, fontSize: 20.0)),
          ),
          IconButton(onPressed: () {Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => FavoritosPage())
           );}, icon: Icon(Icons.control_point)),
          Container(
            height: 10,
          ),
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
            Container(
              height: 110,
              width: 110,
              child: Image.network('https://m.media-amazon.com/images/I/715+3WHXWyL._AC_UF1000,1000_QL80_.jpg'),
            ),
            Container(
              height: 100,
              width: 100,
            ),
           ], 
          ),
          Container(
            height: 10,
          ),
          RichText(text: TextSpan(text: 'Lidos', style: TextStyle(fontWeight: FontWeight.bold, 
          color: Colors.deepPurple, fontSize: 20.0,),),
         
          ),
           IconButton(onPressed: () {Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => LidosPage())
           );}, icon: Icon(Icons.control_point)),
          Container(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
            Container(
              height: 110,
              width: 110,
              child: Image.network('https://m.media-amazon.com/images/I/715+3WHXWyL._AC_UF1000,1000_QL80_.jpg'),
            ),
            Container(
              height: 110,
              width: 110,
              child: Image.network('https://upload.wikimedia.org/wikipedia/pt/thumb/c/ce/A_Hora_da_Estrela.jpg/230px-A_Hora_da_Estrela.jpg'),
            ),
           ], 
          ),
          Container(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
            Container(
              height: 110,
              width: 110,
              child: Image.network('https://m.media-amazon.com/images/I/61x1ZHomWUL._AC_UF1000,1000_QL80_.jpg'),
            ),
            Container(
              height: 110,
              width: 110,
              child: Image.network('https://m.media-amazon.com/images/I/51XULadddlL.jpg'),
            ),
           ], 
          ),

        ]),
        
      ),
        
       
    );
  }

}

class CustomSwitch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Switch(value: AppController.instance.isDartTheme, onChanged: (value) {
          AppController.instance.changeTheme();
        },);
  }
}