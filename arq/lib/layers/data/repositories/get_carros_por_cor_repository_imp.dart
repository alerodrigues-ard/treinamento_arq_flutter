import 'package:arq/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:arq/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:dartz/dartz.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDatasource _getCarrosPorCorDatasource;
  GetCarrosPorCorRepositoryImp(this._getCarrosPorCorDatasource);

  @override
  Either<Exception, CarroEntity> call(String cor) {
    return _getCarrosPorCorDatasource(cor);
  }
}
