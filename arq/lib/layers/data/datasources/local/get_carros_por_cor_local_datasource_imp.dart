import 'package:arq/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arq/layers/data/dtos/carro_dto.dart';
import 'package:dartz/dartz.dart';

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
  Either<Exception, CarroDto> call(String cor) {
    try {
      if (cor.contains('vermelho')) {
        return Right(CarroDto.fromMap(jsonVermelho));
      }
      return Right(CarroDto.fromMap(jsonQualquerCor));
    } catch (e) {
      return Left(Exception('error in datasource'));
    }
  }
}
