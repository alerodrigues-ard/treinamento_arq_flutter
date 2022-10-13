import 'package:arq/data/dtos/carro_dto.dart';
import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:arq/layers/domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    // chamamos a api e ela respondeu um json
    var json = {
      'placa': 'TTT1234',
      'quantidadePortas': 2,
      'valorFinal': 1000.00,
    };

    return CarroDto.fromMap(json);
  }
}
