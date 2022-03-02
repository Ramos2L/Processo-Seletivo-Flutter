import 'package:flutter/material.dart';

class UserResult extends StatelessWidget {

  final String ? avatarurl;
  final String name;
  final String ? company;
  final String ? location;
  final String ? bio;
  final int ? followers;
  final int ? following;

  const UserResult({ 
    Key? key, 
    required this.avatarurl,
    required this.name, 
    required this.company, 
    required this.location,
    required this.bio,
    required this.followers,
    required this.following,
  } ) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(  
      appBar: AppBar(  
        iconTheme: const IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
      ),
      body: Center(

        child: Padding(
          padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('$avatarurl')
                ),
                Text("Nome de Usuário: $name"),
                Text("Organização do Usuário: $company"),
                Text("Localidade do Usuário: $location"),
                Text("Bio de Usuário: $bio"),
                Text("Nº de Seguidores: $followers"),
                Text("Nº de Seguindos: $following"),
              ],
            ),
        ),
      ) 
    );
  }
}