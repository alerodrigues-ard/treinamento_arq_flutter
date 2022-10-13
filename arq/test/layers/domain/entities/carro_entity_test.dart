import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test(
    'Espero que a entidade não seja nula',
    () {
      CarroEntity carroEntity =
          CarroEntity(placa: 'TTT-1234', quantidadePortas: 2, valor: 1000.00);

      expect(carroEntity, isNotNull);
    },
  );

  test(
    'Espero que o valor real seja 2000.00',
    () {
      CarroEntity carroEntity =
          CarroEntity(placa: 'TTT-1234', quantidadePortas: 2, valor: 1000.00);

      var valorRealEsperado = 2000.00;
      expect(carroEntity.valorReal, valorRealEsperado);
    },
  );

  test(
    'Espero que o valor real seja 0.00',
    () {
      CarroEntity carroEntity =
          CarroEntity(placa: 'TTT-1234', quantidadePortas: 0, valor: 1000.00);

      var valorRealEsperado = 0.00;
      expect(carroEntity.valorReal, valorRealEsperado);
    },
  );

  test(
    'Espero que o valor seja 30000.00 após execução da Logica',
    () {
      CarroEntity carroEntity =
          CarroEntity(placa: 'TTT-1234', quantidadePortas: 2, valor: 15000.00);

      var valorEsperado = 30000.00;

      carroEntity.setLogica();
      expect(carroEntity.valor, valorEsperado);
    },
  );
}
