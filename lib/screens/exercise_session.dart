import "package:flutter/material.dart";
import "package:gymapp/_core/app_colors.dart";
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
          title: Column(
            children: [
              Text(
                exerciseModel.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Text(
                exerciseModel.train,
                style: const TextStyle(fontSize: 15),
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: AppColors.darkBlue,
          elevation: 0,
          toolbarHeight: 72,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(32),
            ),
          ),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Enviar foto"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Tirar foto"),
                    ),
                  ],
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
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(feeling.feeling),
                    subtitle: Text(feeling.date),
                    leading: const Icon(Icons.double_arrow_outlined),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        print("DELETAR ${feeling.feeling}");
                      },
                    ),
                  );
                }),
              )
            ],
          ),
        ));
  }
}
