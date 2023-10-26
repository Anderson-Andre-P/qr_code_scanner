import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/theme/theme_cubit.dart';
import '../widgets/custom_app_bar.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Configurações',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: const Text('Tema'),
            subtitle: const Text('Selecione seu tema preferido'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Selecionar tema'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RadioListTile<AppTheme>(
                          title: const Text('Tema Light'),
                          value: AppTheme.light,
                          groupValue: context.read<ThemeCubit>().state,
                          onChanged: (value) {
                            context.read<ThemeCubit>().toggleTheme();
                            Navigator.pop(context);
                          },
                        ),
                        RadioListTile<AppTheme>(
                          title: const Text('Tema Dark'),
                          value: AppTheme.dark,
                          groupValue: context.read<ThemeCubit>().state,
                          onChanged: (value) {
                            context.read<ThemeCubit>().toggleTheme();
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),

          ListTile(
            title: const Text('Sobre'),
            subtitle:
                const Text('Descubra mais informações sobre o aplicativo'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              showAboutDialog(
                context,
              );
            },
          ),

          // Add more settings options as needed
        ],
      ),
    );
  }

  void showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Sobre'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/Logo.png',
                height: 64,
              ),
              const SizedBox(height: 16),
              const Text(
                'Gerador de QRCode',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Versão 1.0.0',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Descrição:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                  "Simplifique o compartilhamento e o acesso às informações com o Gerador de QR - a maneira fácil de gerar e digitalizar códigos QR."),
              const SizedBox(height: 16),
              const Text(
                'Desenvolvido por:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('Anderson André && Saman KC'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Fechar'),
            ),
          ],
        );
      },
    );
  }
}
