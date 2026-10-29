import 'package:exemplo_um/widgets/cartao_disciplina.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              CartaoDisciplina(
                nome: 'Programação para Dispositivos Móveis',
                curso: 'Desenvolvimento de Software Multiplataforma',
                professor: 'Ana', 
                cargaHoraria: 80,
              ),
              SizedBox(height: 16),
              CartaoDisciplina(
                nome: 'Banco de Dados',
                curso: 'Desenvolvimento de Software Multiplataforma',
                professor: 'Pedro', 
                cargaHoraria: 80,
              ),
              SizedBox(height: 16),
              CartaoDisciplina(
                nome: 'Experiência do Usuário',
                curso: 'Desenvolvimento de Software Multiplataforma',
                professor: 'José', 
                cargaHoraria: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}