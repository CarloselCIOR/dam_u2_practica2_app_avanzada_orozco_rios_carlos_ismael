import 'package:flutter/material.dart';
import 'inicio.dart';
import 'registro.dart';
import 'acercade.dart';

class Practica2 extends StatefulWidget {
  const Practica2({Key? key}) : super(key: key);

  @override
  State<Practica2> createState() => _Practica2State();
}

class _Practica2State extends State<Practica2> {
  int _indice = 0;

  void _cambiarIndice(int indice){
    setState(() {
      _indice = indice;
    });
  }

  final List<Widget> _paginas =[
    Inicio(),
    Registro(),
    AcercaDe(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TecApp'), centerTitle: true,),
      body: _paginas[_indice],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.app_registration), label: "Registro"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Acerda de"),
        ],
        currentIndex: _indice,
        onTap: _cambiarIndice,
      ),
    );
  }
}
