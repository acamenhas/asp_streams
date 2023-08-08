import 'package:asp2/src/features/test/test_page.dart';
import 'package:asp2/src/features/test/test_reducer.dart';
import 'package:asp2/src/features/test/test_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/custom_hasura_connect.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  void binds(i) {
    i.addSingleton(TestReducer.new);
    //na versão anterior tinha:
    //Bind.factory((i) => CustomHasuraConnect.getConnect()),
    i.add(CustomHasuraConnect.new);
    i.add(TestRepository.new);
  }

  @override
  void routes(r) {
    r.child("/", child: (context) => const TestPage());
  }
}
