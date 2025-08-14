import 'package:flutter/material.dart';
import 'package:redwicom/screens/tecnico/imagen_instructiva.dart';
import 'package:redwicom/screens/tecnico/home_screen.dart';

class EvidenciaHojalateriaScreen extends StatelessWidget {
  const EvidenciaHojalateriaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800, // Fondo exterior
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          color: Colors.blue, // Fondo azul interior
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Evidencia Hojalatera',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),

              // Botones grandes
              for (var text in [
                'Frente',
                'Lateral Izquierdo',
                'Lateral Derecho',
                'Reverso',
                'Frente ángulo izquierdo',
                'Frente ángulo derecho',
                'Reverso ángulo izquierdo',
                'Reverso ángulo derecho',
              ])
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ImagenInstructiva()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        text,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),

              const SizedBox(height: 20),

              // Botón validar (más pequeño)
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                    (Route<dynamic> route) => false,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 24,
                  ),
                ),
                child: const Text(
                  'Validar',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
