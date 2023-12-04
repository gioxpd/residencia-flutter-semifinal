import 'package:flutter/material.dart';

class Livro3Page extends StatefulWidget {
  const Livro3Page({super.key});

  @override
  State<Livro3Page> createState() => _Livro3PageState();
}

class _Livro3PageState extends State<Livro3Page> {
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
          child: Image.network('https://m.media-amazon.com/images/I/61x1ZHomWUL._AC_UF1000,1000_QL80_.jpg'),

        ),
        Container(
          height: 20,
        ),
      RichText(text: TextSpan(text: 'Dom Casmurro', style: TextStyle(fontWeight: FontWeight.bold, 
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
            child: Text('Em Dom Casmurro, o narrador Bento Santiago retoma a infância que passou na Rua de Matacavalos e conta a história do amor e das desventuras que viveu com Capitu, uma das personagens mais enigmáticas e intrigantes da literatura brasileira.'),
            
          ),
          
        
        ],),
    ),
    );
  }
}