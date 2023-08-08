const String circuitsAll = """
query {
  circuits(order_by: {name: asc}) {
    id
    name
  }
}
""";

const String circuitsSAll = """
subscription {
  circuits(order_by: {name: asc}) {
    id
    name
  }
}
""";
