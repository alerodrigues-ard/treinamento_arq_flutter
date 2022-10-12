class CarroEntity {
  String placa;
  int quantidadePortas;
  double valor;

  CarroEntity({
    required this.placa,
    required this.quantidadePortas,
    required this.valor,
  });

  double get valorReal {
    return valor * quantidadePortas;
  }
}
