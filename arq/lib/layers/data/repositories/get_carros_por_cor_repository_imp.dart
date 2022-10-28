import 'package:arq/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:arq/layers/domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDatasource _getCarrosPorCorDatasource;
  GetCarrosPorCorRepositoryImp(this._getCarrosPorCorDatasource);

  @override
  CarroEntity call(String cor) {
    return _getCarrosPorCorDatasource(cor);
  }
}
