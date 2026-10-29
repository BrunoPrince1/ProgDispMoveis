import 'package:flutter/material.dart';

class CartaoDisciplina extends StatelessWidget {
  final String nome;
  final String curso;
  final String professor;
  final int cargaHoraria;

  const CartaoDisciplina({
    super.key,
    required this.nome,
    required this.curso,
    required this.professor,
    required this.cargaHoraria,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        border: Border.all(color: Colors.blue.shade200),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.shade200, 
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          const Icon(Icons.phone_android, size: 48, color: Colors.deepPurple), 
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nome,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(curso),
                const SizedBox(height: 6),
                Row(
                  children: [
                    const Icon(Icons.person, size: 18), 
                    const SizedBox(width: 6),
                    Expanded(child: Text(professor)), 
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.access_time, size: 18),
                    const SizedBox(width: 6),
                    Text('Carga horária: $cargaHoraria horas'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}