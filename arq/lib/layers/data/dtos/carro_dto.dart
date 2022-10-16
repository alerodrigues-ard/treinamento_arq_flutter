import 'dart:convert';

import 'package:arq/layers/domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  String placa;
  int quantidadePortas;
  double valorFinal;

  CarroDto({
    required this.placa,
    required this.quantidadePortas,
    required this.valorFinal,
  }) : super(
            placa: placa,
            quantidadePortas: quantidadePortas,
            valor: valorFinal);

  CarroDto copyWith({
    String? placa,
    int? quantidadePortas,
    double? valorFinal,
  }) {
    return CarroDto(
      placa: placa ?? this.placa,
      quantidadePortas: quantidadePortas ?? this.quantidadePortas,
      valorFinal: valorFinal ?? this.valorFinal,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'placa': placa,
      'quantidadePortas': quantidadePortas,
      'valorFinal': valorFinal,
    };
  }

  factory CarroDto.fromMap(Map<String, dynamic> map) {
    return CarroDto(
      placa: map['placa'] ?? '',
      quantidadePortas: map['quantidadePortas']?.toInt() ?? 0,
      valorFinal: map['valorFinal']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CarroDto.fromJson(String source) =>
      CarroDto.fromMap(json.decode(source));

  @override
  String toString() =>
      'CarroDto(placa: $placa, quantidadePortas: $quantidadePortas, valorFinal: $valorFinal)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CarroDto &&
        other.placa == placa &&
        other.quantidadePortas == quantidadePortas &&
        other.valorFinal == valorFinal;
  }

  @override
  int get hashCode =>
      placa.hashCode ^ quantidadePortas.hashCode ^ valorFinal.hashCode;
}
