import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "David Garcia Olivares M-190650",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 50.0,
                          fontFamily: 'Roboto'),
        ),
        centerTitle: true,
        toolbarHeight: 200,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: const AssetImage("assets/fondo.jpg"), fit: BoxFit.fill),                
          ),
          width: 200,
        ),
        backgroundColor: Color.fromARGB(255, 247, 83, 8),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Card(
                  child: Container(
                padding: const EdgeInsets.all(35.0),
                child: Column(
                  children: <Widget>[
                    Text("Datos del alumno",
                        style: TextStyle( color: Color.fromARGB(255, 9, 150, 216),fontFamily: "Raleway", fontSize: 35.0)),
                        Image.asset(
                      'assets/foto.jpg',                      
                      height: 150,
                      width: 600,
                    ),
                    Text("Nombre: David Garcia Olivares"),
                    Text("Fecha de nacimiento: 04 de Agosto de 1982"),
                    Text("Genero: Masculino"),
                  ],
                ),
              )),
              Card(
                  child: Container(
                padding: const EdgeInsets.all(35.0),
                child: Column(
                  children: <Widget>[
                    Text("Datos academicos",
                        style: TextStyle( color: Color.fromARGB(255, 181, 9, 216),fontFamily: "Roboto-Bold", fontSize: 35.0)),
                    Text(
                        "Carrera: Ingenieria en Desarrollo y Gestión de Software"),
                    Text("Cuatrimestre: Decimo"),
                    Text("Promedio: 9.79"),
                  ],
                ),
              )),
              Card(
                  child: Container(
                padding: const EdgeInsets.all(35.0),
                child: Column(
                  children: <Widget>[
                    Text("Horario",
                        style: TextStyle( color: Color.fromARGB(255, 216, 119, 9),fontFamily: "Raleway-Black", fontSize: 35.0)),
                    Text("Materia: Desarrollo Movil Integral"),
                    Text("Docente: M.T.I Marco Antonio Ramírez Hernández"),
                    Text("Día: Viernes"),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
      floatingActionButton:
          SpeedDial(animatedIcon: AnimatedIcons.menu_arrow, children: [
        SpeedDialChild(
            child: Icon(Icons.person),
            label: 'Datos del estudiante',
            backgroundColor: Color.fromARGB(255, 202, 130, 22)),
        SpeedDialChild(
            child: Icon(Icons.school),
            label: 'Datos academicos',
            backgroundColor: Color.fromARGB(255, 202, 130, 22)),
        SpeedDialChild(
          child: Icon(Icons.book),
          label: 'Horarios',
          backgroundColor: Color.fromARGB(255, 202, 130, 22),
        ),
      ]),
    );
  }
}
