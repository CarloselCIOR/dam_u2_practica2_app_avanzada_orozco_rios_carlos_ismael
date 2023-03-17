import 'package:flutter/material.dart';

class Registro extends StatefulWidget {
  const Registro({Key? key}) : super(key: key);

  @override
  State<Registro> createState() => _RegistroState();
}
TextEditingController _par1 = TextEditingController(text: "0");
TextEditingController _par2 = TextEditingController(text: "0");
TextEditingController _par3 = TextEditingController(text: "0");
TextEditingController _par4 = TextEditingController(text: "0");
TextEditingController _par5 = TextEditingController(text: "0");
TextEditingController _materia = TextEditingController();

class _RegistroState extends State<Registro> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(60),
      children: [
        TextField(
          controller: _materia,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text('Materia:'),
          ),
        ),
        SizedBox(height: 10,),

        TextField(
          controller: _par1,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text('Parcial 1:'),
          ),
        ),
        SizedBox(height: 10,),

        TextField(
          controller: _par2,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text('Parcial 2:'),
          ),
        ),
        SizedBox(height: 10,),

        TextField(
          controller: _par3,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text('Parcial 3:'),
          ),
        ),
        SizedBox(height: 10,),

        TextField(
          controller: _par4,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text('Parcial 4:'),
          ),
        ),
        SizedBox(height: 10,),

        TextField(
          controller: _par5,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text('Parcial 5:'),
          ),
        ),
        SizedBox(height: 30,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              double promedio = 0;
              promedio = (double.parse(_par1.text) + double.parse(_par2.text) + double.parse(_par3.text) + double.parse(_par4.text) + double.parse(_par5.text)) / 5 ;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('La materia de: ${_materia.text}\n'
                        'Tiene un promedio de ${promedio}'),
                    backgroundColor: Colors.black,
                    duration: Duration(seconds: 2),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
            }, child: Text("Calcular")),
            SizedBox(width: 40,),
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Publicado correctamente'),
                  backgroundColor: Colors.black,
                  duration: Duration(seconds: 2),
                  behavior: SnackBarBehavior.floating,
                ),
              );
              _materia.clear();
              _par1.text = "0";
              _par2.text = "0";
              _par3.text = "0";
              _par4.text = "0";
              _par5.text = "0";
            }, child: Text("Publicar")),
          ],
        )
      ],
    );
  }
}
