import 'package:asp/asp.dart';
import 'package:asp2/src/features/test/test_model.dart';
import 'package:asp2/src/features/test/test_repository.dart';
import 'package:asp2/src/features/test/test_state.dart';
import 'package:hasura_connect/hasura_connect.dart';

class TestReducer extends Reducer {
  TestRepository repository;

  Snapshot<List<CircuitModel>>? snapshot;

  TestReducer(this.repository) {
    on(() => [loadCircuits.value], () async {
      circuitsLoading.value = true;
      List<CircuitModel> result = await repository.getAllQuery();
      circuits.clear();
      circuits.addAll(result);

      /*
        como faço para consumir uma subscription do hasura e passar essa lista para a view?
        com o triple usava Snapshot
      */
      //snapshot = await repository.getAllSubscription();
      circuitsLoading.value = false;
    });
  }
}
