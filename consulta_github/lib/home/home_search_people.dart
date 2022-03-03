import 'package:consulta_github/api/service_repository.dart';
import 'package:consulta_github/result/user_result.dart';
import 'package:flutter/material.dart';

class HomeSearchPeople extends StatelessWidget {
  HomeSearchPeople({Key? key}) : super(key: key);

  final service = ServiceRepository();


  final userController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        title: const Text("Buscar...", style: TextStyle( color: Colors.black)),  
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/three');
            },
            icon: const Icon(Icons.help_outline_outlined ,),
          ),
        ],
        backgroundColor: const Color(0xffC4C4C4),
      ),
      backgroundColor: const Color(0xff272A33),
      body: Form(
        key: _formkey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/GitHub1.png', height: 100, width: 100,),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                child: Text("Digite um nome de usuário do GitHub para realizar a busca do perfil", 
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: userController,
                  keyboardType: TextInputType.text,
                  validator: (user){
                    if ( user == null || user.isEmpty ){
                      return 'Por favor, digite um nome de Usuário.';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: "Usuário",
                    hintStyle: TextStyle( color: Colors.green),
                    fillColor: Colors.white,
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.green)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.green)
                    ),
                    prefixIcon: Icon(Icons.person, color: Colors.green,)
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  FocusScopeNode currentFocus = FocusScope.of(context);
                  if(_formkey.currentState?.validate() ?? true){
                    final userSearch = await service.getTodosUser( userController.text );

                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                    }
                    // ignore: unnecessary_null_comparison
                    if ( userSearch != null ){
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => 
                        UserResult(
                          avatarurl: userSearch.avatarurl,
                          bio: userSearch.bio, 
                          company: userSearch.company, 
                          followers: userSearch.followers, 
                          following: userSearch.following, 
                          location: userSearch.location, 
                          name: userSearch.name,   
                        ) ));
                    } else {
                      userController.clear();
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  }
                }, 
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xffC4C4C4), // background
                  onPrimary: Colors.black, // foreground
                ),
                child: const Text("Buscar"))
            ],
          ),
        ),
      ),
    );
  }
  
  final snackBar = const SnackBar(
    content: Text(
      'Usuário inválido, por favor inserir outro.',
      textAlign: TextAlign.center,
    ),
    backgroundColor: Colors.redAccent
  );
}
