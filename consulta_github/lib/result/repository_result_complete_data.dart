import 'dart:math';

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
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text("Repositórios"),
        backgroundColor: const Color(0xffC4C4C4),
      ),
      backgroundColor: const Color(0xff272A33),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                    child: Text(todo[index].name.substring(0,2)),
                  ),
                ),
                Text("Repositório: ${todo[index].name} \n",
                  style: const TextStyle( color: Colors.white, fontSize: 18),
                ),
                todo[index].description != null ? Text("Descrição: ${todo[index].description} \n",
                  style: const TextStyle( color: Colors.white, fontSize: 18),
                ) : const Text(" "),
                todo[index].language != null ? Text("Linguagem Utilizada: ${todo[index].language} \n", 
                  style: const TextStyle( color: Colors.white, fontSize: 18),
                ): const Text(" "),
                Text("Nº Forks: ${todo[index].forks} \n",
                  style: const TextStyle( color: Colors.white, fontSize: 18),
                ),
                Text("Nº Star: ${todo[index].stargazerscount} \n",
                  style: const TextStyle( color: Colors.white, fontSize: 18),
                ),
                Text("Visibilidade: ${todo[index].visibility} \n",
                  style: const TextStyle( color: Colors.white, fontSize: 18),
                ),
                Text("Data de Criação: ${todo[index].createdat!.substring(0,10)} \n",
                  style: const TextStyle( color: Colors.white, fontSize: 18),
                ),
              ],
            ),
        ),
      ) 
    );
  }
  
}