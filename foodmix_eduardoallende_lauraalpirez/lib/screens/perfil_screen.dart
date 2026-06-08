import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/session.dart';
import '../providers/favoritos_provider.dart';
import 'login_screen.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favoritos =
        Provider.of<FavoritosProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Perfil'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 55,
              child: Icon(
                Icons.person,
                size: 60,
              ),
            ),

            const SizedBox(height: 15),

            Text(
              Session.usuario.isEmpty
                  ? 'Usuario'
                  : Session.usuario,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                title: const Text(
                  'Favoritos',
                ),
                subtitle: Text(
                  '${favoritos.favoritos.length} recetas guardadas',
                ),
              ),
            ),

            const SizedBox(height: 10),

            Card(
              child: const ListTile(
                leading: Icon(
                  Icons.restaurant_menu,
                ),
                title: Text(
                  'Actividad',
                ),
                subtitle: Text(
                  'Explora nuevas recetas todos los días',
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              '¿Encontraste algún problema?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            ElevatedButton.icon(
              onPressed: () {
                final reporteController =
                    TextEditingController();

                showDialog(
                  context: context,
                  builder: (dialogContext) {
                    return AlertDialog(
                      title: const Text(
                        'Reportar problema',
                      ),
                      content: TextField(
                        controller:
                            reporteController,
                        maxLines: 4,
                        decoration:
                            const InputDecoration(
                          hintText:
                              'Describe el problema...',
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(
                              dialogContext,
                            );
                          },
                          child: const Text(
                            'Cancelar',
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (reporteController
                                .text
                                .trim()
                                .isEmpty) {
                              return;
                            }

                            Navigator.pop(
                              dialogContext,
                            );

                            ScaffoldMessenger.of(
                                    context)
                                .showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Gracias por tu reporte',
                                ),
                              ),
                            );
                          },
                          child: const Text(
                            'Enviar',
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              icon: const Icon(
                Icons.report_problem,
              ),
              label: const Text(
                'Reportar',
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const LoginScreen(),
                  ),
                  (route) => false,
                );
              },
              icon: const Icon(
                Icons.logout,
              ),
              label: const Text(
                'Cerrar Sesión',
              ),
            ),
          ],
        ),
      ),
    );
  }
}