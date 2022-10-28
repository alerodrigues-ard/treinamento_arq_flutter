import 'package:arq/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:arq/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:arq/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test(
    'Deve salvar carro com sucesso',
    () async {
      SalvarCarroFavoritoUseCase useCase = SalvarCarroFavoritoUseCaseImp(
        SalvarCarroFavoritoRepositopryImp(),
      );

      var carroEntity =
          CarroEntity(placa: 'TTT-1234', quantidadePortas: 4, valor: 10000.00);

      var result = await useCase(carroEntity);
      late bool resultExpect;

      result.fold((l) => null, (r) => resultExpect = r);

      expect(resultExpect, true);
    },
  );
  test(
    'Não deve salvar carro com valor menor ou igual a zero',
    () async {
      SalvarCarroFavoritoUseCase useCase = SalvarCarroFavoritoUseCaseImp(
        SalvarCarroFavoritoRepositopryImp(),
      );

      var carroEntity =
          CarroEntity(placa: 'TTT-1234', quantidadePortas: 4, valor: 0.00);

      var result = await useCase(carroEntity);
      late bool resultExpect;

      result.fold(
        (l) => null,
        (r) => resultExpect = r,
      );

      expect(resultExpect, false);
    },
  );
}
