import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          // Imagen de fondo
          Positioned.fill(
            child: Image.asset(
              'assets/bg.jpg', // Ruta de la imagen
              fit: BoxFit.cover, // Cubrir todo el fondo
            ),
          ),
          // Gradiente encima de la imagen
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0x7FCB0A0A), // Rojo con 50% de transparencia
                    Color(0x4D000000), // Negro con 30% de transparencia
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
