import 'package:flutter/material.dart';

Future<void> main() async {
  var mess = await createOderMessage();
  runApp(MyApp(mess));
}
Future<String> createOderMessage() async {
  var mess = await getUserMessage();
  return mess;
}
Future<String> getUserMessage() async {
  return(
      Future.delayed(Duration(seconds: 10),()=>'Da doi kq tra ve')
  );
}
class MyApp  extends StatelessWidget{
  String _mess;
  MyApp(this._mess);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BatDongBoPage(_mess)
    );
  }

}

class BatDongBoPage  extends StatefulWidget{
  String _mess;
  BatDongBoPage(this._mess);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BatDongBoPageState();
  }


}

class BatDongBoPageState  extends State<BatDongBoPage> {
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
            Text('Gia tri nhan ve: ${widget._mess}')
          ],
        ),
      ),
    );
  }


}