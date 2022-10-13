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

  // Uma lógica qualquer
  setLogica() {
    if (valorReal > 10000.00) {
      valor *= 2;
    }
  }
}
