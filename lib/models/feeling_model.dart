class FeelingModel {
  String id;
  String feeling;
  String date;

  FeelingModel({required this.id, required this.feeling, required this.date});

  // construtor para quando pegamos do banco de dados
  FeelingModel.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        feeling = map['feeling'],
        date = map['data'];

  // construtor para quando enviamos para banco de dados
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "feeling": feeling,
      "date": date,
    };
  }
}
