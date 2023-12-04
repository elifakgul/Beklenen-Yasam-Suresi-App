
class UserData {
  String? seciliCinsiyet;
  double icilenSigara = 0.0;
  double sporgun = 0.0;
  int boy=170;
  int kilo=50; //Bölme işleminde paydada yer alan bir değer asla sıfır OLAMAZ.Temel matematik bilgisi

  UserData(
      {required this.icilenSigara,
        required this.sporgun,
        required this.boy,
        required this.kilo,
        required this.seciliCinsiyet});
}