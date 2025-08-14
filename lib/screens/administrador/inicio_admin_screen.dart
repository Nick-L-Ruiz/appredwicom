import 'package:flutter/material.dart';
import 'package:redwicom/screens/administrador/aprovicionamiento_vehiculo_screen.dart';
import 'package:redwicom/screens/administrador/asignacion_rutas_screen.dart';
import 'package:redwicom/screens/administrador/evidencia_admin_screen.dart';
import 'package:redwicom/screens/administrador/mantenimiento_screen_admin.dart';
import 'package:redwicom/screens/administrador/mapa_de_ruta.dart';
import 'package:redwicom/screens/administrador/opciones_validacion_vehiculo_screen.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // fondo azul
      body: SafeArea(
        child: Stack(
          children: [
            // Contenido principal centrado
            Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Bienvenido Usuario',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 40),

                    // Botón 1
                    _buildButton(
                      context,
                      label: 'Revisión de evidencias',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const EvidenciaAdminScreen()),
                        );// 
                      },
                    ),
                    const SizedBox(height: 20),

                    // Botón 2
                    _buildButton(
                      context,
                      label: 'Validación de vehículos',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const OpcionesValidacionVehiculo()),
                        );// 
                      },
                    ),
                    const SizedBox(height: 20),

                    // Botón 3
                    _buildButton(
                      context,
                      label: 'Mantenimientos',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const VentanaMantenimientoAdmin()),
                        );// 
                      },
                    ),
                    const SizedBox(height: 20),

                    // Botón 4
                    _buildButton(
                      context,
                      label: 'Aprovisionamiento de vehículos',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const AprovicionamientoVehiculo()),
                        );// 
                      },
                    ),
                    const SizedBox(height: 20),

                    // Botón 5
                    _buildButton(
                      context,
                      label: 'Asignación de rutas',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const AsignacionRutasScreen()),
                        );// 
                      },
                    ),
                    const SizedBox(height: 30),

                    // Botón 6 temporal
                    _buildButton(
                      context,
                      label: 'Mapa de ruta',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MapaRutaScreen()),
                        );// 
                      },
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),

            // Botón de salida en la esquina superior derecha
            Positioned(
              top: 10,
              right: 10,
              child: IconButton(
                icon: const Icon(Icons.exit_to_app, color: Colors.white, size: 30),
                onPressed: () {
                  Navigator.pop(context); // o Navigator.pushReplacementNamed(context, '/login');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context,
      {required String label, required VoidCallback onPressed}) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[200],
          foregroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          label,
          style: const TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
