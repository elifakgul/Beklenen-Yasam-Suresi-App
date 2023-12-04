import 'package:proje/user_data.dart';

class Hesap{
  final UserData _userData;
  Hesap(this._userData);

  double? hesaplama(){
    double? sonuc;
    sonuc=90+_userData.sporgun -_userData.icilenSigara;
    sonuc=sonuc+(_userData.boy/_userData.kilo);

    if(_userData.seciliCinsiyet=='KADIN'){
      return sonuc+=3;
    }else{
      return sonuc;
    }


  }
}