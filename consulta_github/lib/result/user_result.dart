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
        iconTheme: const IconThemeData(color: Colors.black),
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
                    radius: 75,
                    backgroundImage: NetworkImage('$avatarurl')
                  ),
                ),
                Text("Nome de Usuário: $name \n",
                  style: const TextStyle( color: Colors.white, fontSize: 18),
                ),
                Text("Organização do Usuário: $company \n",
                  style: const TextStyle( color: Colors.white, fontSize: 18),
                ),
                Text("Localidade: $location \n",
                  style: const TextStyle( color: Colors.white, fontSize: 18),
                ),
                Text("Bio de Usuário: $bio \n",
                  style: const TextStyle( color: Colors.white, fontSize: 18),
                ),
                Text("Nº de Seguidores: $followers \n",
                  style: const TextStyle( color: Colors.white, fontSize: 18),
                ),
                Text("Nº de Seguindos: $following \n",
                  style: const TextStyle( color: Colors.white, fontSize: 18),
                ),
              ],
            ),
        ),
      ) 
    );
  }
}