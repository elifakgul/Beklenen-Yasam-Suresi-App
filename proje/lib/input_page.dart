import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proje/result_page.dart';
import 'package:proje/user_data.dart';
import './icon_cinsiyet.dart';
import './My_Container.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String? seciliCinsiyet;
  double icilenSigara=0.0;
  double sporgun=0.0;
  int boy=170;
  int kilo=50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    child:buildRow('BOY'),),
                ),
                Expanded(
                  child: MyContainer(
                    child: buildRow('KİLO'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Haftada kaç gün spor yapıyorsunuz?',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                Text('${sporgun.round()}',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                Slider(
                  min: 0,
                  max: 7,
                  value: sporgun,
                  onChanged: (double newValue){
                    setState(() {
                      sporgun=newValue;
                    });
                  },
                ),
              ],
            ),),
          ),
          Expanded(
            child:MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Günde kaç sigara içiyorsunuz?',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('${icilenSigara.round()}',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Slider(
                      min: 0,
                      max: 30,
                      value: icilenSigara,
                      onChanged: (double newValue){
                        setState(() {
                          icilenSigara=newValue;
                        });
                      },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    onPress: (){
                      setState(() {
                        seciliCinsiyet='KADIN';
                      });
                    },
                    renk: seciliCinsiyet=='KADIN'?Colors.pinkAccent:Colors.white,
                    child: IconCinsiyet(cinsiyet: 'KADIN', icon: FontAwesomeIcons.venus,),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    onPress: (){
                      setState(() {
                        seciliCinsiyet='ERKEK';
                      });
                    },
                    renk: seciliCinsiyet=='ERKEK'?Colors.brown:Colors.white,
                    child: IconCinsiyet(cinsiyet: 'ERKEK', icon: FontAwesomeIcons.mars,),
                  ),
                ),


              ],
            ),
          ),

          ButtonTheme(
              height: 50,
              child: OutlinedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(
                  UserData(
                    icilenSigara:icilenSigara,
                    sporgun: sporgun,
                    boy: boy,
                    kilo: kilo,
                    seciliCinsiyet: seciliCinsiyet,



                  )
                )));
              }, child: Text('HESAPLA'))),
        ],
      ),
    );
  }

  Row buildRow(String deger) {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    RotatedBox(
                        quarterTurns: -1,
                        child: Text(deger,
                        style: TextStyle(color: Colors.black,fontSize: 20),)),
                    SizedBox(
                      width: 10,
                    ),

                    RotatedBox(
                        quarterTurns: -1,
                        child: Text(deger=='BOY'?boy.toString():kilo.toString(),
                          style: TextStyle(color: Colors.lightBlue,fontSize: 35,fontWeight: FontWeight.bold),)),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonTheme (
                            minWidth: 35,
                            child: OutlinedButton(onPressed: (){
                              setState(() {
                                deger=='BOY'?boy++:kilo++;
                              });
                            }, child: Icon(FontAwesomeIcons.plus,size: 15,))),
                    ButtonTheme(
                      minWidth: 35,
                        child: OutlinedButton(onPressed: (){
                          setState(() {
                            deger=='BOY'?boy--:kilo--;
                          });
                        }, child: Icon(FontAwesomeIcons.minus,size: 15,))),
                    ],),
                  ],);
  }
}

