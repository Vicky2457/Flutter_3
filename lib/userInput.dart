import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);
  @override
  State<DashBoardScreen> createState() => _DashBoardScreen();
}

class _DashBoardScreen extends State<DashBoardScreen> {
  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          backgroundColor: const Color.fromARGB(255, 135, 232, 111),
        ),
        body: Center(
            child: Container(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                        keyboardType: TextInputType.phone,
                        controller: emailText,
                        decoration: InputDecoration(
                          hintText: 'Enter Email',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                  color: Colors.deepOrange, width: 2)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(color: Colors.blueAccent)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(color: Colors.black)),
                          // suffixText: "username Exist",
                          suffixIcon: IconButton(
                            icon: Icon(Icons.remove_red_eye,
                                color: Colors.orange),
                            onPressed: () {},
                          ),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.blue,
                          ),
                        )),
                    Container(
                      height: 11,
                    ),
                    TextField(
                      controller: passText,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Enter PassWord',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide:
                                  BorderSide(color: Colors.deepOrange))),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          String uEmail = emailText.text.toString();
                          String uPass = passText.text.toString();
                          print("Email: $uEmail,Pass:$uPass");
                        },
                        child: Text("login"))
                  ],
                ))));
  }
}
