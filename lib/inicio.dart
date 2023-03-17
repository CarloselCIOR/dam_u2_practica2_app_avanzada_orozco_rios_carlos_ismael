import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  TextEditingController _nombre = TextEditingController();
  TextEditingController _noControl = TextEditingController();
  TextEditingController _semestre = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [

          SizedBox(height: 80,),

          Image.asset("lib/img/logo.png", height: 120, width: 120),
          
          Padding(padding: EdgeInsets.fromLTRB(60,60,60,10),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Nombre",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.account_box_outlined)),
              controller: _nombre,)
            ),

          Padding(padding: EdgeInsets.fromLTRB(60,10,60,10),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "No. Control",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.numbers)),
                controller: _noControl,
                keyboardType: TextInputType.number,)
          ),

          Padding(padding: EdgeInsets.fromLTRB(60,10,60,10),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Semestre",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.access_alarm)),
                controller: _semestre,
                keyboardType: TextInputType.number,)
          ),

          Padding(padding: EdgeInsets.all(40),
          child: ElevatedButton(
            onPressed: () {
               _Alerta();
              },
              child: Text('Iniciar'),
            ),
          )
        ],
      ),
    );
  }


  void _Alerta() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        if(_nombre.text.isNotEmpty && _noControl.text.isNotEmpty && _semestre.text.isNotEmpty){
          return AlertDialog(
            title: Text('Bienvenido'),
            content: Text('Hola ${_nombre.text}!\nGracias por formar parte de la plataforma\n\nNumero de control: ${_noControl.text}\nSemestre: ${_semestre.text}'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Aceptar'),
              ),
            ],
          );
        }else{
          return AlertDialog(
            title: Text('Advertencia'),
            content: Text('Llena todos los datos para continuar!'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancelar'),
              ),
            ],
          );
        }

      },
    );
  }
}
