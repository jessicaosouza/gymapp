class ExerciseModel {
  String id;
  String name;
  String train;
  String howToDo;
  String? imageUrl;

  ExerciseModel(
      {required this.id,
      required this.name,
      required this.train,
      required this.howToDo});

  // construtor para quando pegamos do banco de dados
  ExerciseModel.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        train = map['train'],
        howToDo = map['howToDo'],
        imageUrl = map['imageUrl'];

  // construtor para quando enviamos para banco de dados
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "train": train,
      "howToDo": howToDo,
      "imageUrl": imageUrl
    };
  }
}
