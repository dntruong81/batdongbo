import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp  extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BatDongBoPage()
    );
  }

}

class BatDongBoPage  extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BatDongBoPageState();
  }
}

class BatDongBoPageState  extends State<BatDongBoPage> {
  String messU ='';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Lap trinh bat dong bo'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Gia tri nhan ve: $messU'),
            IconButton(onPressed: ()  async {
              messU = '.....';
              setState  (() {
              });
              messU = await createOderMessage();
              setState  (() {
              });
            }, icon: Icon(Icons.add_circle)),
          ],
        ),
      ),
    );
  }
}
Future<String> createOderMessage() async {
  var mess = await getUserMessage();
  return mess;
}
Future<String> getUserMessage() async {
  return(
      Future.delayed(Duration(seconds: 5),()=>'Da doi kq tra ve')
  );
}