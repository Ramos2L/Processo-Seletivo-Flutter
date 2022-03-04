import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffC4C4C4),
      ),
      backgroundColor: const Color(0xff272A33),
      body: SingleChildScrollView(  
        child: Padding(  
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
          child: Column(  
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/GitHubLogo.png', height: 100, width: 100,),
                  Image.asset('assets/images/LuxOne.png', height: 100, width: 100,),
                ],
              ),
              const SizedBox( height: 20,),
              const Text("•    Este aplicativo tem como objetivo realizar consultas na API do GitHub, mostrando repositórios de informações de um determinado usuário. \n\n•    Essa aplicação foi realizada com a finalidade do processo Seletivo para desenvolvedor Mobile Flutter.", 
                textAlign: TextAlign.justify,
                style: TextStyle( color: Colors.white, fontSize: 18, height: 2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}