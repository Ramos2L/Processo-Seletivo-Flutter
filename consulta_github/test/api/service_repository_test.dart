import 'package:consulta_github/api/service_repository.dart';

void main() async {
  final service = ServiceRepository();

  final todos = await service.getTodos( 'Ramos2L' );
  print(todos?[5].name);

  final todosUser = await service.getTodosUser( 'Ramos2L' );
  
}