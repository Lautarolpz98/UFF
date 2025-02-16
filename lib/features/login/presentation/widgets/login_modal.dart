import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.50, // Ocupa el 75% de la pantalla
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black, // Fondo negro
          borderRadius: BorderRadius.circular(20), // Bordes redondeados
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Iniciar Sesión",
              style: GoogleFonts.inter(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Texto blanco
              ),
            ),
            SizedBox(height: 20),
            TextField(
              style: TextStyle(color: Colors.white), // Texto blanco
              cursorColor: Colors.white, // Cursor blanco
              decoration: InputDecoration(
                labelText: "Correo electrónico",
                labelStyle:
                    TextStyle(color: Colors.white), // Etiqueta en blanco
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.white), // Borde blanco
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.white), // Borde blanco
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.white), // Borde blanco
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              style: TextStyle(color: Colors.white), // Texto blanco
              obscureText: true,
              cursorColor: Colors.white, // Cursor blanco
              decoration: InputDecoration(
                labelText: "Contraseña",
                labelStyle:
                    TextStyle(color: Colors.white), // Etiqueta en blanco
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.white), // Borde blanco
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.white), // Borde blanco
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.white), // Borde blanco
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Aquí irá la función de recuperar contraseña
                  print("sirve pa");
                },
                child: Text(
                  "¿Olvidaste tu contraseña?",
                  style: TextStyle(color: Colors.white), // Texto blanco
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: Colors.red, // Botón rojo
                foregroundColor: Colors.white, // Texto blanco
              ),
              onPressed: () {
                // Acción para iniciar sesión
                print("si apreto logea");
              },
              child: Text("Ingresar"),
            ),
          ],
        ),
      ),
    );
  }
}

void showLoginModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true, // Permite expandirse completamente
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
    ),
    backgroundColor: Colors.transparent,
    builder: (context) => LoginModal(),
  );
}
