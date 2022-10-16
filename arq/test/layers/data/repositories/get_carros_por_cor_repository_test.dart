import 'package:arq/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arq/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:arq/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:arq/layers/domain/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  GetCarrosPorCorDatasource datasource = GetCarrosPorCorLocalDatasourceImp();
  GetCarrosPorCorRepository repository =
      GetCarrosPorCorRepositoryImp(datasource);

  test(
    'Deve devolver um carro de qualquer cor',
    () {
      var result = repository('branco');
      expect(result, isNotNull);
    },
  );
}
