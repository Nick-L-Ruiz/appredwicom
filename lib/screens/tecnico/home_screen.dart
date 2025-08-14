import 'package:flutter/material.dart';
import 'package:redwicom/screens/tecnico/logintecnico_screen.dart';
import 'evidencia_mecanica.dart';
import 'evidencia_kilometrica.dart';
import 'evidencia_hojalateria.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Fondo principal y contenido
            Container(
              width: double.infinity,
              color: const Color(0xFF2A00FF),
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),

                  // Título
                  const Text(
                    "Bienvenido Julanito",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Unidad label
                  const Text(
                    "Unidad #",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Caja de texto
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      "001 Wolvasgen",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),

                  const SizedBox(height: 60),

                  // Botones
                  Center(
                    child: Column(
                      children: [
                        customButton(context, "Evidencias Mecánicas"),
                        const SizedBox(height: 20),
                        customButton(context, "Evidencias Kilometraje"),
                        const SizedBox(height: 20),
                        customButton(context, "Evidencias Hojalateria"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Botón salir (icono en la esquina superior derecha)
            Positioned(
              top: 16,
              right: 16,
              child: IconButton(
                icon: const Icon(Icons.logout, color: Colors.white),
                tooltip: 'Cerrar sesión',
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreenTecnico()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Botón personalizado con navegación
  Widget customButton(BuildContext context, String text) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          if (text == "Evidencias Mecánicas") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const EvidenciaMecanicaScreen()),
            );
          } else if (text == "Evidencias Kilometraje") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const EvidenciaKilometricaScreen()),
            );
          } else if (text == "Evidencias Hojalateria") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const EvidenciaHojalateriaScreen()),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFD9D9D9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 20),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}
