import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      //home: new Text("Cool")
      home: new MyStatelessWidget()));
}

class MyStatelessWidget extends StatelessWidget {
  int count;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Stateles Widget")),
      body: new Container(
        padding: new EdgeInsets.all(16.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //new MyCard(title: new Text("Texto 1"), icon: new Icon(Icons.today)),
            //new MyCard(title: new Text("Texto 2"), icon: new Icon(Icons.toys)),
            //new MyCard(
            //    title: new Text("Texto 3"), icon: new Icon(Icons.swap_calls))
            new MyCard2(titulo: new Text("¿Como puede conseguir la vida eterna?"),subtitulo: new Text("Personas mayores")),
            new MyCard2(titulo: new Text("¿Cómo podemos saber lo que pasará en el futuro?"),subtitulo: new Text("Para los jóvenes"))
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  MyCard({this.title, this.icon});
  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: new EdgeInsets.only(bottom: 20.0),
        child: new Card(
            child: new Container(
                padding: new EdgeInsets.all(15.0),
                child: new Column(
                  children: <Widget>[this.title, this.icon],
                ))));
  }
}

class MyCard2 extends StatelessWidget {
  MyCard2({this.titulo, this.subtitulo});
  final Widget titulo;
  final Widget subtitulo;

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: new EdgeInsets.only(bottom: 20.0),
        child: new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new ListTile(
                leading: const Icon(Icons.album),
                title: this.titulo,
                subtitle: this.subtitulo,
              ),
              new ButtonTheme.bar(
                // make buttons use the appropriate styles for cards
                child: new ButtonBar(
                  children: <Widget>[
                    new FlatButton(
                      child: const Text('PRIMERA CONVERSACION'),
                      onPressed: () {/* ... */},
                    )
                  ],
                ),
              ),
              new ButtonTheme.bar(
                // make buttons use the appropriate styles for cards
                child: new ButtonBar(
                  children: <Widget>[
                    new FlatButton(
                      child: const Text('1ª REVISITA'),
                      onPressed: () {/* ... */},
                    ),
                    new FlatButton(
                      child: const Text('1ª REVISITA'),
                      onPressed: () {/* ... */},
                    ),
                    new FlatButton(
                      child: const Text('2ª REVISITA'),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
