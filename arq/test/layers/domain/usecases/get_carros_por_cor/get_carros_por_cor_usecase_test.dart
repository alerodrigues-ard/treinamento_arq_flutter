import 'package:arq/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:arq/layers/domain/repositories/get_carros_por_cor_repository_imp.dart';
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

      expect(result, isInstanceOf<CarroEntity>());
    },
  );

  test(
    'Deve retornar um carro de quatro portas vermelho',
    () {
      GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
          GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDatasourceImp()));

      var result = useCase('vermelho');

      expect(result.quantidadePortas, 4);
    },
  );

  test(
    'Deve retornar um carro de duas portas com qualquer cor exceto vermelho',
    () {
      GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
          GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDatasourceImp()));

      var result = useCase('verde');

      expect(result.quantidadePortas, 2);
    },
  );
}
