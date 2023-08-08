import 'package:clientes/services/firebase_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddCliente extends StatefulWidget {
  const AddCliente({super.key});

  @override
  State<AddCliente> createState() => _AddClienteState();
}

class _AddClienteState extends State<AddCliente> {
  

  TextEditingController nombreController = TextEditingController(text: "");
  TextEditingController telefonoController = TextEditingController(text: "");
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController documentoController = TextEditingController(text: "");

  //validaciones 


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Agregar cliente"),
      ),
      body :   Column(
        children: [
           TextField(
            controller: nombreController,
            decoration: const InputDecoration(
            hintText: "ingese su nombre",
            ),
          ),
           TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(10), // Limitar a 10 caracteres
              FilteringTextInputFormatter.digitsOnly,
            ],
            controller: telefonoController,
            decoration: const InputDecoration(
            hintText: "ingese su telefono",
            ),
          ),
           TextField(
            controller: emailController,
            decoration: const InputDecoration(
            hintText: "ingese su email",
            ),
          ),
           TextField(
            controller: documentoController,
            decoration: const InputDecoration(
            hintText: "ingese su documento",
            ),
          ),
          ElevatedButton(onPressed: () async{
            // print(nombreController.text + telefonoController.text + emailController.text + documentoController.text);
            await addCliente(nombreController.text, telefonoController.text, emailController.text, documentoController.text).then((_) {
              Navigator.pop(context);
            });
          }, child: const Text("Guardar"),)
        ],
      ),
    );
  }
}

