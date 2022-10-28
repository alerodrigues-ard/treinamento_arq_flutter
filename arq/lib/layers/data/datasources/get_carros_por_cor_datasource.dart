import 'package:arq/layers/data/dtos/carro_dto.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarrosPorCorDatasource {
  Either<Exception, CarroDto> call(String cor);
}
