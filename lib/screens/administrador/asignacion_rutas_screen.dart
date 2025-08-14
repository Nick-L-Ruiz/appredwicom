import 'package:flutter/material.dart';
import 'package:redwicom/screens/administrador/inicio_admin_screen.dart';


class AsignacionRutasScreen extends StatelessWidget {
  const AsignacionRutasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rutaController = TextEditingController();
    final observacionesController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Asignación de rutas',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),

              // Ruta
              const Text(
                'Ruta',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.cyanAccent, width: 2),
                  color: Colors.grey[300],
                ),
                child: TextField(
                  controller: rutaController,
                  decoration: const InputDecoration(border: InputBorder.none),
                ),
              ),

              const SizedBox(height: 30),

              // Observaciones
              const Text(
                'Observaciones',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Container(
                height: 120,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
                child: TextField(
                  controller: observacionesController,
                  maxLines: null,
                  expands: true,
                  decoration: const InputDecoration(border: InputBorder.none),
                ),
              ),

              const SizedBox(height: 40),

              // Botón Salir
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const AdminHomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[200],
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Salir',
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
