import 'package:flutter/material.dart';
import 'package:the_mall/mcdonalds.dart';

class FoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Hero(
            tag: 'imageHero',
            child: Image.asset('Images/food.png', height: 540, width: 1000, fit: BoxFit.cover,),
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
