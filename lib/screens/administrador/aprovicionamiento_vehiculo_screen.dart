import 'package:flutter/material.dart';
import 'inicio_admin_screen.dart'; // Asegúrate de tener importada esta pantalla

class AprovicionamientoVehiculo extends StatelessWidget {
  const AprovicionamientoVehiculo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Aprovisionamiento',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),

                const Text(
                  'Cableado',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 60,
                  color: Colors.grey.shade300,
                  child: const TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                const SizedBox(height: 30),

                const Text(
                  'Equipos Fibra',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 60,
                  color: Colors.grey.shade300,
                  child: const TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                const SizedBox(height: 30),

                const Text(
                  'Equipos Radio',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 60,
                  color: Colors.grey.shade300,
                  child: const TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                const SizedBox(height: 40),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AdminHomeScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Salir',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
