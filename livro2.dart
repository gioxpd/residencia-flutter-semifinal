import 'package:flutter/material.dart';

class Livro2Page extends StatefulWidget {
  const Livro2Page({super.key});

  @override
  State<Livro2Page> createState() => _Livro2PageState();
}

class _Livro2PageState extends State<Livro2Page> {
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
          child: Image.network('https://upload.wikimedia.org/wikipedia/pt/thumb/c/ce/A_Hora_da_Estrela.jpg/230px-A_Hora_da_Estrela.jpg'),

        ),
        Container(
          height: 20,
        ),
      RichText(text: TextSpan(text: 'A Hora da Estrela', style: TextStyle(fontWeight: FontWeight.bold, 
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
            child: Text('Clarice Lispector pouco antes de sua morte, exemplificada por "A hora da estrela". Neste romance, a autora deixa de lado sua abordagem intimista, dando destaque a personagens distintos, como a nordestina Macabéa. Macabéa, uma mulher miserável e quase sem consciência de sua própria existência, enfrenta desafios no Rio de Janeiro, onde se apaixona por Olímpio de Jesus, apenas para ser traída.'),
            
          ),
          
        
        ],),
    ),
    );
  }
}