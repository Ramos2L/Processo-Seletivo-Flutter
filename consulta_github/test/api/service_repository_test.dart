import 'package:consulta_github/api/service_repository.dart';

void main() async {
  final service = ServiceRepository();

  final todos = await service.getTodos( 'Ramos2L' );
  // ignore: avoid_print
  print(todos?[5].name);

  // ignore: unused_local_variable
  final todosUser = await service.getTodosUser( 'Ramos2L' );
  
}