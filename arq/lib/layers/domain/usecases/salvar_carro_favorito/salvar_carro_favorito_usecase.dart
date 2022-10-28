import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:dartz/dartz.dart';

abstract class SalvarCarroFavoritoUseCase {
  Future<Either<Exception, bool>> call(CarroEntity carroEntity);
}
