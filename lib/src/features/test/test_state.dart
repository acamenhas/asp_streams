import 'package:asp/asp.dart';
import 'package:asp2/src/features/test/test_model.dart';

final circuits = <CircuitModel>[].asAtom();
final circuitsLoading = Atom<bool>(true);
final loadCircuits = Atom.action();
