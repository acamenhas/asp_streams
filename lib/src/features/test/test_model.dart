class CircuitModel {
  @override
  String? id;
  String? name;

  CircuitModel({this.id, this.name});

  static List<CircuitModel> fromJsonList(List list) {
    if (list == null) return [];
    return list
        .map((item) => item.cast<String, dynamic>())
        .map<CircuitModel>((item) => CircuitModel.fromMap(item))
        .toList();
  }

  factory CircuitModel.fromMap(Map<String, dynamic> map) {
    if (map == null) {
      return CircuitModel();
    }

    return CircuitModel(
      id: map['id'] ?? "",
      name: map['name'] ?? "",
    );
  }
}
