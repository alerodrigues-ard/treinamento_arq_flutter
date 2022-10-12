import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUseCase {
  @override
  CarroEntity call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroEntity(
          placa: 'AAA-1234', quantidadePortas: 4, valor: 50000.0);
    }

    return CarroEntity(placa: 'AAA-1234', quantidadePortas: 2, valor: 2000.0);
  }
}
