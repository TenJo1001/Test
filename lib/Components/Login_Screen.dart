import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10 , left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
                  Text("Back!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Username or Email",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.remove_red_eye),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: (){
                        
                      },
                      child: Text("Forget Password?",style: TextStyle(color: Colors.red),))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Row(
                  children: [
                    Container(
                      width: size.width*0.89,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: GestureDetector( onTap: (){},  child: Text("Log In",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),))),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
