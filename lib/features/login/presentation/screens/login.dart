import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uff_app/features/login/presentation/widgets/gradient.dart';
import 'package:uff_app/features/login/presentation/widgets/login_modal.dart';
import 'package:uff_app/features/login/presentation/widgets/registermodal.dart';
import '../widgets/login_button.dart'; // Importamos el widget LoginButton

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo con imagen y gradiente
          GradientBackground(),

          // Contenido de la pantalla (puedes agregar más widgets aquí)
          Padding(
            padding: const EdgeInsets.only(top: 0, right: 25),
            child: Column(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'UFF',
                        style: GoogleFonts.inter(
                            fontSize: 150,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontStyle: FontStyle.italic),
                      ),
                      // Aquí irían otros campos como los de email y contraseña
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Botón de Iniciar sesión
          Positioned(
            bottom: 60,
            left: 50,
            right: 50,
            child: LoginButton(
              onPressed: () {
                // Acción al presionar el botón
                showLoginModal(context);
              },
            ),
          ),

          Positioned(
            bottom:
                30, // Ajustamos la posición para que esté justo debajo del botón
            left: 20,
            right: 20,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'No tiene una cuenta? ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Acción al presionar "REGISTRO"
                      // Aquí abrimos el modal de registro
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30)),
                        ),
                        backgroundColor: Colors.transparent,
                        builder: (context) =>
                            RegisterModal(), // Modal de Registro
                      );
                    },
                    child: Text(
                      'REGISTRO',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.red, // Color rojo
                        // Espaciado para un toque más llamativo
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
