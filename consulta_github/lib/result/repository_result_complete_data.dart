import 'package:consulta_github/api/todo_model.dart';
import 'package:flutter/material.dart';

class RepositoryResultCompleteData extends StatelessWidget {

  final List<TodoModelRepository> todo;
  
  const RepositoryResultCompleteData({ Key? key, required this.todo} ) : super(key: key);

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
                  child: Text(todo[0].name.substring(0,2)),
                ),
                Text("Repositório: ${todo[0].name}"),
                Text("Descrição: ${todo[0].description}"),
                Text("Linguagem utilizada: ${todo[0].language}"),
                Text("Nº Forks: ${todo[0].forks}"),
                Text("Nº Star: ${todo[0].stargazerscount}"),
                Text("Visibilidade: ${todo[0].visibility}"),
                Text("Data: ${todo[0].createdat}"),
              ],
            ),
        ),
      ) 
    );
  }
  
}