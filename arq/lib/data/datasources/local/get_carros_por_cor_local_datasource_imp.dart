import 'package:arq/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arq/data/dtos/carro_dto.dart';

class GetCarrosPorCorLocalDatasourceImp implements GetCarrosPorCorDatasource {
  final jsonVermelho = {
    'placa': 'VVV1234',
    'quantidadePortas': 4,
    'valorFinal': 5000.00,
  };

  final jsonQualquerCor = {
    'placa': 'AAA1234',
    'quantidadePortas': 2,
    'valorFinal': 2000.00,
  };

  @override
  CarroDto call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroDto.fromMap(jsonVermelho);
    }
    return CarroDto.fromMap(jsonQualquerCor);
  }
}
