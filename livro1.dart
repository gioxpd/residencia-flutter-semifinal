import 'package:flutter/material.dart';

class Livro1Page extends StatefulWidget {
  const Livro1Page({super.key});

  @override
  State<Livro1Page> createState() => _Livro1PageState();
}

class _Livro1PageState extends State<Livro1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search),)],
      ),
      body: Container
      ( width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 30,
          ),
         
        Container(
          height: 200,
          width: 200,
          child: Image.network('https://m.media-amazon.com/images/I/715+3WHXWyL._AC_UF1000,1000_QL80_.jpg'),

        ),
        Container(
          height: 20,
        ),
      RichText(text: TextSpan(text: 'Quem é você Alasca?', style: TextStyle(fontWeight: FontWeight.bold, 
          color: Colors.deepPurple, fontSize: 20.0)),
          ),
          Container(
            height: 10,
          ),
          RichText(text: TextSpan(text: 'Sinopse', style: TextStyle(fontWeight: FontWeight.bold, 
          color: Colors.deepPurpleAccent, fontSize: 20.0)),
          ),
          Container(
            height: 240,
            width: 240,
            child: Text('Miles Halter estava em busca de um Grande Talvez. Alasca Young queria saber como sair do labirinto. Suas vidas se colidiram na Escola Culver Creek, e nada nunca mais foi o mesmo.'),
            
          ),
          
        
        ],),
    ),
    );
  }
}