import 'package:arq/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:arq/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test(
    'Deve retornar uma instância de carro quando passada qualquer cor',
    () {
      GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
          GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDatasourceImp()));

      var result = useCase('azul');
      late CarroEntity expectResult;

      result.fold(
        (l) => null,
        (r) => expectResult = r,
      );

      expect(expectResult, isInstanceOf<CarroEntity>());
    },
  );

  test(
    'Deve retornar um carro de quatro portas vermelho',
    () {
      GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
          GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDatasourceImp()));

      var result = useCase('vermelho');
      late CarroEntity expectResult;

      result.fold(
        (l) => null,
        (r) => expectResult = r,
      );

      expect(expectResult.quantidadePortas, 4);
    },
  );

  test(
    'Deve retornar um carro de duas portas com qualquer cor exceto vermelho',
    () {
      GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
          GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDatasourceImp()));

      var result = useCase('verde');
      late CarroEntity expectResult;

      result.fold(
        (l) => null,
        (r) => expectResult = r,
      );

      expect(expectResult.quantidadePortas, 2);
    },
  );
}
