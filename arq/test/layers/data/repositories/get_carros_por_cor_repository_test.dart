import 'package:arq/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:arq/layers/domain/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  GetCarrosPorCorRepository repository = GetCarrosPorCorRepositoryImp();

  test(
    'Deve devolver um carro de qualquer cor',
    () {
      var result = repository('branco');
      expect(result, isNotNull);
    },
  );
}
