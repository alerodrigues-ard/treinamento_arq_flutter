import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:arq/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:dartz/dartz.dart';

class SalvarCarroFavoritoRepositopryImp
    implements SalvarCarroFavoritoRepository {
  @override
  Future<Either<Exception, bool>> call(CarroEntity carroEntity) async {
    try {
      return Right(carroEntity.valor > 0);
    } catch (e) {
      return Left(Exception('repository error'));
    }
  }
}
