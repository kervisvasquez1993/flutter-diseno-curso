import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulos = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estilosSubtitulos = TextStyle(fontSize: 14.0, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        _contenedor_imagen(),
        _contenedor_titulo(),
        _crear_acciones(),
        _contenedor_Texto()
      ],
    ));
  }

  _contenedor_titulo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Row(
        children: <Widget>[
          _titulo_y_subtitulo(),
          Icon(
            Icons.star,
            color: Colors.red,
            size: 30.0,
          ),
          Text('41'),
        ],
      ),
    );
  }

  Widget _titulo_y_subtitulo() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // alineacion secundaria
        children: <Widget>[
          Text(
            'Esto es un prueba',
            style: estiloTitulos,
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            'esto es una prueba 2 esto e suna prueba',
            style: estilosSubtitulos,
          )
        ],
      ),
    );
  }

  Widget _contenedor_imagen() {
    return Image(
      image: NetworkImage(
          'https://llandscapes-10674.kxcdn.com/wp-content/uploads/2019/07/lighting.jpg'),
    );
  }

  Widget _crear_acciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _accion(Icons.call, 'Llamar'),
        _accion(Icons.near_me, 'Router'),
        _accion(Icons.share, 'Share'),
      ],
    );
  }

  _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  _contenedor_Texto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 25.0),
      child: Text(
          'pecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
    );
  }
}
