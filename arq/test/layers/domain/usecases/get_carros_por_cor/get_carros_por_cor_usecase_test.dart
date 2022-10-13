import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:arq/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroEntity(placa: 'AAA1234', quantidadePortas: 4, valor: 5000.00);
    }
    return CarroEntity(placa: 'BBB1234', quantidadePortas: 2, valor: 2000.00);
  }
}

main() {
  test(
    'Deve retornar uma instância de carro quando passada qualquer cor',
    () {
      GetCarrosPorCorUseCase useCase =
          GetCarrosPorCorUseCaseImp(GetCarrosPorCorRepositoryImp());

      var result = useCase('azul');

      expect(result, isInstanceOf<CarroEntity>());
    },
  );

  test(
    'Deve retornar um carro de quatro portas vermelho',
    () {
      GetCarrosPorCorUseCase useCase =
          GetCarrosPorCorUseCaseImp(GetCarrosPorCorRepositoryImp());

      var result = useCase('vermelho');

      expect(result.quantidadePortas, 4);
    },
  );

  test(
    'Deve retornar um carro de duas portas com qualquer cor exceto vermelho',
    () {
      GetCarrosPorCorUseCase useCase =
          GetCarrosPorCorUseCaseImp(GetCarrosPorCorRepositoryImp());

      var result = useCase('verde');

      expect(result.quantidadePortas, 2);
    },
  );
}
