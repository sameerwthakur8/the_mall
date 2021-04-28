import 'package:flutter/material.dart';

class GooglePixel3XL1 extends StatelessWidget {
  GooglePixel3XL1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-54.0, 0.0),
            child:
                // Adobe XD layer: 'homepage' (shape)
                Container(
              width: 520.0,
              height: 923.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
