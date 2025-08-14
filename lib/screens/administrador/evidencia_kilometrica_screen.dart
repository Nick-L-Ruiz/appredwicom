import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Para simular descarga si se desea

class EvidenciaKilometricaScreenAdmin extends StatefulWidget {
  const EvidenciaKilometricaScreenAdmin({super.key});

  @override
  State<EvidenciaKilometricaScreenAdmin> createState() => _EvidenciaKilometricaScreenAdminState();
}

class _EvidenciaKilometricaScreenAdminState extends State<EvidenciaKilometricaScreenAdmin> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> imagenes = [
    'lib/assets/evidenciamecanica/carro1.jpg',
    'lib/assets/evidenciamecanica/carro2.jpg',
    'lib/assets/evidenciamecanica/carro3.jpg',
  ];

  void _cambiarImagen(int index) {
    if (index >= 0 && index < imagenes.length) {
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _descargarImagen() {
    // Aquí podrías integrar lógica de descarga real si usas permisos y paquetes como `path_provider` + `dio`
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Imagen descargada (simulado)')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Evidencia Kilometrica',
                style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 30),

            // Carrusel de imágenes
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  PageView.builder(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemCount: imagenes.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(imagenes[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),

                  // Botón de descarga (esquina superior izquierda)
                  Positioned(
                    top: 10,
                    left: 10,
                    child: FloatingActionButton(
                      onPressed: _descargarImagen,
                      backgroundColor: Colors.pinkAccent,
                      mini: true,
                      child: const Icon(Icons.download),
                    ),
                  ),

                  // Flecha izquierda
                  Positioned(
                    left: 10,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_left, size: 40, color: Colors.black),
                      onPressed: () => _cambiarImagen(_currentPage - 1),
                    ),
                  ),

                  // Flecha derecha
                  Positioned(
                    right: 10,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_right, size: 40, color: Colors.black),
                      onPressed: () => _cambiarImagen(_currentPage + 1),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Botón salir
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[300],
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('Salir', style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
