import 'package:flutter/material.dart';

class McdonaldsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: Text('The Mall'),
      ),
      body: GestureDetector(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Hero(
            tag: 'imageHero',
            child: Image.asset('Images/mcdonalds.png', height: 540, width: 1000, fit: BoxFit.cover,),
          ),
        ),
        onTap: () {
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) => McdonaldsPage()
          ));
        },
      ),
    );
  }
}
