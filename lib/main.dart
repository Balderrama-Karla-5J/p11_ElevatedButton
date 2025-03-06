import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Balderrama Karla Mat.1149',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            customButton(
                "Button",
                Icons.home,
                Colors.blue,
                RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20))), // Bordes redondeados
            customButton(
                "Button",
                Icons.star,
                Colors.green,
                BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(15)))), // Rectángulo octagonal
            customButton(
                "Button",
                Icons.settings,
                Colors.orange,
                RoundedRectangleBorder(
                  // Esquina superior derecha redondeada
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(30)),
                )),
            customButton(
                "Button",
                Icons.phone,
                Colors.purple,
                RoundedRectangleBorder(
                  // Esquinas personalizadas
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40), // 40% superior izquierda
                    topRight: Radius.circular(15), // 15% superior derecha
                  ),
                )),

            customButton(
                "Button",
                null,
                Colors.red,
                BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(15)))), // Rectángulo octagonal
            customButton(
                "Button",
                null,
                Colors.teal,
                RoundedRectangleBorder(
                  // Esquina superior derecha redondeada
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(30)),
                )),
            customButton(
                "Button",
                null,
                Colors.amber,
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
            customButton(
                "Button",
                null,
                Colors.cyan,
                RoundedRectangleBorder(
                  // Esquinas personalizadas
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40), // 40% superior izquierda
                    topRight: Radius.circular(15), // 15% superior derecha
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget customButton(
      String text, IconData? icon, Color color, OutlinedBorder shape) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: shape,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        ),
        onPressed: () {},
        child: icon != null
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(icon, color: Colors.white),
                  SizedBox(width: 8),
                  Text(text, style: TextStyle(color: Colors.white)),
                ],
              )
            : Text(text, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
