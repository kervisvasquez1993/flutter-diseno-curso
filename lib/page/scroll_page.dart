import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: <Widget>[_pagina1(), _pagina2()],
        ),
      ),
    );
  }

  _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _texto(),
      ],
    );
  }

  _pagina2() {
    return Center(
      child: Text('pagina2'),
    );
  }

  _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      /* color: Colors.grey, */
      color: Color.fromRGBO(108, 192, 218, 0.5),
    );
  }

  _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  _texto() {
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: <Widget>[
          Text(
            '11º',
            style: estiloTexto,
          ),
          Text(
            'Miercoles',
            style: estiloTexto,
          ),
          Expanded(
            child: Container(),
          ),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white),
        ],
      ),
    );
  }
}
