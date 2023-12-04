import 'package:flutter/material.dart';

class Livro4Page extends StatefulWidget {
  const Livro4Page({super.key});

  @override
  State<Livro4Page> createState() => _Livro4PageState();
}

class _Livro4PageState extends State<Livro4Page> {
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
          child: Image.network('https://m.media-amazon.com/images/I/51XULadddlL.jpg'),

        ),
        Container(
          height: 20,
        ),
      RichText(text: TextSpan(text: 'Dom Quixote', style: TextStyle(fontWeight: FontWeight.bold, 
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
            child: Text('Dom Quixote, escrito pelo espanhol Miguel de Cervantes, é um clássico da literatura mundial e uma das obras mais influentes da história. Publicado pela primeira vez em 1605, o romance é uma obra-prima da ficção que tece uma narrativa na qual humor,drama e filosofia são mesclados a personagens complexos e emocionantes.'),
            
          ),
          
        
        ],),
    ),
    );
  }
}