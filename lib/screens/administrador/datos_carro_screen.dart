import 'package:flutter/material.dart';
import 'package:redwicom/screens/administrador/documentacion_vehiculo_screen.dart';
import 'package:redwicom/screens/tecnico/cam_screen.dart';

class DatosVehiculoScreen extends StatelessWidget {
  const DatosVehiculoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final unidadController = TextEditingController();
    final fechaController = TextEditingController();
    final matriculaController = TextEditingController();
    final modeloController = TextEditingController();
    final marcaController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.blue, // Fondo azul como en la imagen 2
      appBar: AppBar(
        title: const Text('Validación de vehículos'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildInputField('Unidad:', unidadController),
            _buildInputField('Fecha Adq:', fechaController),
            _buildInputField('Matrícula:', matriculaController),
            _buildInputField('Modelo:', modeloController),
            _buildInputField('Marca:', marcaController),
            const SizedBox(height: 30),

            _buildButton(
              text: 'Evidencia Fotográfica',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PantallaCamara()),
                );
              },
            ),
            const SizedBox(height: 20),

            _buildButton(
              text: 'Documentación',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DocumentacionVehiculoScreen()),
                );
              },
            ),
            const SizedBox(height: 20),

            _buildButton(
              text: 'Salir',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[300],
                contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton({required String text, required VoidCallback onPressed}) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          backgroundColor: Colors.grey[300],
          foregroundColor: Colors.black,
          textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
