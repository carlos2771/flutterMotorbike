import 'package:clientes/services/firebase_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clientes"),
      ),
      body: FutureBuilder(
        future: getClientes(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            // te permite comprobar si el proceso se completó correctamente y si hay datos disponibles para su uso o visualización.
            return ListView.builder(
              itemCount: snapshot.data?.length, // define la cantidad total de elementos que se mostrarán en la lista
              itemBuilder: (context, index) {// define como se mostrara cada elemento en la lista
              final cliente = snapshot.data?[index];
              return ListTile(
                title: Text ("Nombre: ${cliente["nombre"]} telefono:  ${cliente["telefono"]} email: ${cliente["email"]} Documento ${cliente["documento"]}"),
                onTap:( () async{
                 await Navigator.pushNamed(context, "/edit", arguments: {
                    "uid": snapshot.data?[index]["uid"],
                    "nombre": snapshot.data?[index]["nombre"],
                    "telefono": snapshot.data?[index]["telefono"],
                    "email": snapshot.data?[index]["email"],
                    "documento": snapshot.data?[index]["documento"],
                  });
                  setState(() {});
                }),
              );
              //   final cliente = snapshot.data?[index];
              //   return Text( esto es para hacer pruebas a la base de datos para ver los usuarios registrados
              //       "Nombre: ${cliente["nombre"]} telefono:  ${cliente["telefono"]} email: ${cliente["email"]} Documento ${cliente["documento"]}");
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        }),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            label: 'Agregar cliente',
            onTap: () async {
              await Navigator.pushNamed(context, "/add"); // el await es para que se recarguen los datos asi tome tiempo
              setState(() {});
              print('cliente');
            },
          ),
        ],
      )
    );
  }
}
