import 'package:flutter/material.dart';
import 'package:mymainchat/chatroom.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //final String chatRoomId="asdc";

  setuid() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('id', "abc");
  }

  @override
  initState()
  async {
    this.setuid();

  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,

          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home:main2()
    );
  }
}
class main2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("desc"),
      ),
      body: Center(
        child: Column(


          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/abc.png',

            ),
            Text(
              'Sumit Gupta:',
              style: Theme.of(context).textTheme.headline3,textAlign: TextAlign.left,
            ),
            Text("Dermatology And Cosmetology",

              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(

        child: Icon(Icons.chat),
        onPressed: (){
          debugPrint("Asfd");
          Route route=MaterialPageRoute(
              builder: (context) => ChatPage());
          Navigator.pushReplacement(context, route);

        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


