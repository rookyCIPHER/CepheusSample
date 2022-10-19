import 'package:flutter/material.dart';

void main()=>runApp(const MaterialApp(
   home: HomePage(),
));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 40),
          child: Column(
            children: [
              const Expanded(
                child: Center(
                   child: CircleAvatar(
                    backgroundImage: AssetImage('assets/index.jpg'),
                    radius: 100,
                  ),
                ),
              ),

              Divider(height: 60,color: Colors.grey[800]),

              Row(
                children: const [
                  Icon(
                      Icons.mail,
                    color: Colors.grey,
                    size: 30,
                  ),

                  SizedBox(width: 10),

                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'E-Mail',
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 3,color: Colors.white30)
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              Row(
                children: const [
                  Icon(
                    Icons.lock,
                    color: Colors.grey,
                    size: 30,
                  ),

                  SizedBox(width: 10),

                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3,color: Colors.white30)
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),


              ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all(Colors.lime),
                    ),
                  child: const Text("Log in",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),

                  )

              ),

              Divider(height:30,color:Colors.grey[900]),

              const SizedBox(height: 20),

              const Center(
                child: Text(
                  "Don't have an account?",
                  style:TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),

              ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.lime),
                  ),
                  child: const Text("Sign up",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),

                  )

              ),



            ],
          ),
      ),
    );
  }
}

