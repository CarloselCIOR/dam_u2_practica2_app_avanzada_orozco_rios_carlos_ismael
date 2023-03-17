import 'package:flutter/material.dart';

class AcercaDe extends StatefulWidget {
  const AcercaDe({Key? key}) : super(key: key);

  @override
  State<AcercaDe> createState() => _AcercaDeState();
}

class _AcercaDeState extends State<AcercaDe> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(60),
      children: [
        Image.asset("lib/img/logo.png", width: 150, height: 150,),
        SizedBox(height: 40,),
        Text("DESARROLLADO POR:", style: TextStyle(color: Colors.orange, fontSize: 25),),
        Text("CARLOS I. OROZCO", style: TextStyle(color: Colors.orange, fontSize: 25),),
        SizedBox(height: 50,),
        Text("INSTITUTO TECNOLOGICO DE TEPIC", style: TextStyle(color: Colors.blue, fontSize: 15),),
        SizedBox(height: 50,),
        OutlinedButton(onPressed: (){
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Información'),
                content: Text('Un saludo profe #NoMeRepruebesBenigno'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Aceptar'),
                  ),
                ],
              );
            },
          );
        }, child: Icon(Icons.info))
      ],
    );
  }
}
