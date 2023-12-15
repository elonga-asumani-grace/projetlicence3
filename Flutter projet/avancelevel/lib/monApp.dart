import 'package:flutter/material.dart';

class monApp extends StatefulWidget {
  final String titre;
  monApp({super.key, required this.titre});
  @override
  State<monApp> createState() {
    return _State();
  }
}

class _State extends State<monApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ElongaSoft',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.titre),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          /*leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Action à effectuer lorsque le bouton est pressé.
            },
          )*/
          backgroundColor: Colors.blue,
          elevation: 10.2,
          centerTitle: true,
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.green],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Bonjour j'apprend Fluuter",
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Text("Entete de Drawer"),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                title: Text('Element 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Element 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Element 3'),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
