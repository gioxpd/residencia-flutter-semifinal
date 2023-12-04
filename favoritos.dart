
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:teste_1/livro1.dart';

class FavoritosPage extends StatefulWidget {
  const FavoritosPage({super.key});

  @override
  State<FavoritosPage> createState() => _FavoritosPageState();
}


class _FavoritosPageState extends State<FavoritosPage> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      
      appBar: AppBar(
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search),)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RichText(text: TextSpan(text: 'Favoritos', style: TextStyle(fontWeight: FontWeight.bold, 
          color: Colors.deepPurple, fontSize: 50.0)),
          ),
         Container(
            height: 10,
          ),
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
            Container(
              height: 130,
              width: 130,
              child: Image.network('https://m.media-amazon.com/images/I/715+3WHXWyL._AC_UF1000,1000_QL80_.jpg'),
                     
              ),
              
            Container(
              height: 100,
              width: 100,
            ),
            
           ], 
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: ((context) => Livro1Page())));
            }, icon: Icon(Icons.add)),
            Container(
              height: 10,
              width: 10,
            ),
            ],
          ),
          Container(
            height: 50,
          ),
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
            Container(
              height: 100,
              width: 100,
            ),
            Container(
              height: 100,
              width: 100,
            ),
           ], 
          ),
          Container(
            height: 70,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.add_box)),
            ],
          )
           ],
        )),

    );
  }
}