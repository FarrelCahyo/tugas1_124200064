
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Login Screen"),
          ),
          body: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 200, bottom: 60),
                child: FlutterLogo(
                    size: 50,
                ),
              ),

              Padding(
                padding: EdgeInsets.all(4),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email/ Username",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(4),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 50,
                  width: 400,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text("Log In"),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                ),
              ),

              Padding(
                  padding: EdgeInsets.all(2),
                  child: TextButton(onPressed: (){}, 
                      child: Text("Forgot Password?"),
                      style: TextButton.styleFrom(
                        primary: Colors.grey,
                      ),
                  ),
              ),
            ],
          ),
        )
    );
  }
}