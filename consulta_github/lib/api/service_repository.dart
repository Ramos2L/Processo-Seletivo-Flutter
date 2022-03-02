import 'package:consulta_github/api/todo_model.dart';
import 'package:dio/dio.dart';

class ServiceRepository {
  final dio = Dio();

  Future<List<TodoModelRepository>?> getTodos( String user ) async {
    
    try {
      final response = await dio.get('https://api.github.com/users/$user/repos');

      final body = response.data as List;
      final todos = body.map((map) => TodoModelRepository(
        name: map['name'],
        htmlurl: map['htmlurl'], 
        description: map['description'], 
        createdat: map['createdat'], 
        language: map['language'], 
        forks: map['forks'], 
        visibility: map['visibility'], 
        stargazerscount: map['stargazers_count'], 
      )).toList();

      print("Status Code: ${response.statusCode}");

      return todos;
    } on DioError catch(e) {
      if (e.response?.statusCode == 404 ){
        print("Usuario inválido/inexistente");
      }
    }
  }

  Future<TodoModelUser> getTodosUser( String user ) async {
    
    try {
      final response = await dio.get('https://api.github.com/users/$user');
      if ( response.statusCode == 200 ){
        print("Data: ${response.data}");
        return TodoModelUser(
          avatarurl: response.data['avatar_url'],
          name: response.data['name'],
          company: response.data['company'],
          location: response.data['location'],
          bio: response.data['bio'], 
          followers: response.data['followers'], 
          following: response.data['following'],
        );
      }
      
      
    } on DioError catch(e) {
      if (e.response?.statusCode == 404 ){
        print("Usuario inválido/inexistente");
      }
    }
    return TodoModelUser(avatarurl: '', name: '', company: '', location: '', bio: '', followers: 0, following: 0);
  }
  
}