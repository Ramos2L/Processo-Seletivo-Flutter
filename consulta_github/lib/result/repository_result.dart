import 'package:consulta_github/api/todo_model.dart';
import 'package:consulta_github/result/repository_result_complete_data.dart';
import 'package:flutter/material.dart';

class RepositoryResult extends StatelessWidget {

  final List<TodoModelRepository> todo;
  
  const RepositoryResult({ Key? key, required this.todo} ) : super(key: key);

  @override
  Widget build(BuildContext context) {

    todo.sort((TodoModelRepository a, TodoModelRepository b) => a.stargazerscount!.compareTo((b.stargazerscount!.toInt())));

    return Scaffold(  
      appBar: AppBar(  
        iconTheme: const IconThemeData(color: Colors.grey),
        title: const Text("Repositórios"),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
            child: ListView.builder(
              itemCount: todo.length,
              itemBuilder: (context, index) {
                return Card( 
                  child: ListTile(
                    title: Text(todo[index].name),
                    subtitle: Text("${todo[index].stargazerscount}"),
                    onTap: () {
                      Navigator.push( context, MaterialPageRoute(builder: (context) => RepositoryResultCompleteData(todo: todo,)));
                    },
                  ),
                );
              }
            ),
        ),
      ) 
    );
  }
  
}