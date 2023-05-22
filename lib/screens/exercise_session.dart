import "package:flutter/material.dart";
import "package:gymapp/models/exercise_model.dart";
import "package:gymapp/models/feeling_model.dart";

class ExerciseSession extends StatelessWidget {
  ExerciseSession({super.key});

  final ExerciseModel exerciseModel = ExerciseModel(
      id: "EX001",
      name: "Remada Baixa Supinada",
      train: " Treino A",
      howToDo: "Segura com as duas mãos na barra, mantém a coluna reta e puxa");

  final List<FeelingModel> feelingsList = [
    FeelingModel(
      id: "FE001",
      feeling: "Pouca ativação hoje",
      date: "2022-02-17",
    ),
    FeelingModel(
      id: "FE002",
      feeling: "Já senti um pouco de ativação hoje",
      date: "2022-02-19",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("${exerciseModel.name} -${exerciseModel.train}"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("floating action button foi clicado");
          },
          child: const Icon(Icons.add),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: ListView(
            children: [
              SizedBox(
                height: 250,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Enviar foto"),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Como fazer?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(exerciseModel.howToDo),
              const Padding(
                padding: EdgeInsets.all(8),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              const Text(
                "Como estou me sentindo?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(feelingsList.length, (index) {
                  FeelingModel feeling = feelingsList[index];
                  return Text(feeling.feeling);
                }),
              )
            ],
          ),
        ));
  }
}
