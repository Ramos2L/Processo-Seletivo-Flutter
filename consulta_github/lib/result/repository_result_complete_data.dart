import 'package:consulta_github/api/todo_model.dart';
import 'package:flutter/material.dart';

class RepositoryResultCompleteData extends StatelessWidget {

  final List<TodoModelRepository> todo;
  final int index;
  
  const RepositoryResultCompleteData({ Key? key, required this.todo, required this.index} ) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(  
      appBar: AppBar(  
        iconTheme: const IconThemeData(color: Colors.grey),
        title: const Text("Repositórios"),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.blueAccent,
                  child: Text(todo[index].name.substring(0,2)),
                ),
                Text("Repositório: ${todo[index].name}"),
                Text("Descrição: ${todo[index].description}"),
                Text("Linguagem utilizada: ${todo[index].language}"),
                Text("Nº Forks: ${todo[index].forks}"),
                Text("Nº Star: ${todo[index].stargazerscount}"),
                Text("Visibilidade: ${todo[index].visibility}"),
                Text("Data: ${todo[index].createdat}"),
              ],
            ),
        ),
      ) 
    );
  }
  
}