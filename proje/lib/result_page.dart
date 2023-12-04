import 'package:flutter/material.dart';
import 'package:proje/user_data.dart';
import 'hesap.dart';

class ResultPage extends StatelessWidget {
  final UserData _userData;
 ResultPage(this._userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Sonuc Sayfası')),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(flex:8,child: Center(child: Text(Hesap(_userData).hesaplama()!.round().toString(),
            style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.bold),))),
          Expanded(flex:1,child: OutlinedButton(onPressed: (){
            Navigator.pop(context);
          },child: Text('Geri Dön'),)),
        ],
      ),
    );
  }
}
