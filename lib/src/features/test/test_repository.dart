import 'package:asp2/src/core/custom_hasura_connect.dart';
import 'package:asp2/src/features/test/test_document.dart';
import 'package:asp2/src/features/test/test_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';

class TestRepository extends Disposable {
  CustomHasuraConnect connect;

  TestRepository(this.connect);

  Future<List<CircuitModel>> getAllQuery() async {
    var snapshot = await CustomHasuraConnect.getConnect().query(circuitsAll);
    return CircuitModel.fromJsonList(snapshot["data"]["circuits"]);
  }

  Future<Snapshot<List<CircuitModel>>> getAllSubscription() async {
    var snapshot =
        await CustomHasuraConnect.getConnect().subscription(circuitsSAll);
    return snapshot.map((data) {
      if (data == null) {
        return [];
      }
      return CircuitModel.fromJsonList(data["data"]["circuits"]);
    });
  }

  @override
  void dispose() {}
}
