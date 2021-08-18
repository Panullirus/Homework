import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retrieve Text Input',
      home: MyCustomForm(),
    );
  }
}

// Define un widget de formulario personalizado
class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();

}

// Define la clase State correspondiente. Esta clase contendrá los datos relacionados con
// nuestro formulario.
class _MyCustomFormState extends State<MyCustomForm> {
  int counter = 0;
  // Crea un controlador de texto. Lo usaremos para recuperar el valor actual
  // del TextField!
  final myController = TextEditingController();
  int _counter = 0;
  List<String> list2 = ["hola", "adios"];


  @override
  void dispose() {
    // Limpia el controlador cuando el Widget se descarte
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrieve Text Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // Cuando el usuario pulsa el botón, muestra un diálogo de alerta con el
        // texto que el usuario ha digitado en nuestro campo de texto.
        onPressed: (){
          counter++;
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Producto " + myController.text + " Agregado a la lista"),
              );
            },
          );

        },
        tooltip: 'Enter in the list',
        child: Icon(Icons.text_fields),
      ),
    );
  }
}
