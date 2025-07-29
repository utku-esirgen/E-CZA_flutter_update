import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart'; //Uygulamanın çalışması için gerekli paketler eklenir.

class Input_prov with ChangeNotifier {
  //"provider" sınıfı açılır.
  final _mybox = Hive.box('mybox');

  final now = DateTime.now();

  String? med1 = 'Boş';
  String? med2 = 'Boş';
  String? med3 = 'Boş';
  String? med4 = 'Boş';
  String? med5 = 'Boş';

  String dateNew1 = '';
  String dateOld1 = '';

  String dateNew2 = '';
  String dateOld2 = '';

  String dateNew3 = '';
  String dateOld3 = '';

  String dateNew4 = '';
  String dateOld4 = '';

  String dateNew5 = '';
  String dateOld5 = '';

  int datec1 = 0;
  int datec2 = 0;
  int datec3 = 0;
  int datec4 = 0;
  int datec5 = 0;

  String med1str = 'reçetelendirilemez';
  String med2str = 'reçetelendirilemez';
  String med3str = 'reçetelendirilemez';
  String med4str = 'reçetelendirilemez';
  String med5str = 'reçetelendirilemez';

  String gunsayi1 = '0';
  String gunsayi2 = '0';
  String gunsayi3 = '0';
  String gunsayi4 = '0';
  String gunsayi5 = '0';

  bool pazartesi1 = false;
  bool pazartesi2 = false;
  bool pazartesi3 = false;
  bool pazartesi4 = false;
  bool pazartesi5 = false;

  bool sali1 = false;
  bool sali2 = false;
  bool sali3 = false;
  bool sali4 = false;
  bool sali5 = false;

  bool carsamba1 = false;
  bool carsamba2 = false;
  bool carsamba3 = false;
  bool carsamba4 = false;
  bool carsamba5 = false;

  bool persembe1 = false;
  bool persembe2 = false;
  bool persembe3 = false;
  bool persembe4 = false;
  bool persembe5 = false;

  bool cuma1 = false;
  bool cuma2 = false;
  bool cuma3 = false;
  bool cuma4 = false;
  bool cuma5 = false;

  bool cumartesi1 = false;
  bool cumartesi2 = false;
  bool cumartesi3 = false;
  bool cumartesi4 = false;
  bool cumartesi5 = false;

  bool pazar1 = false;
  bool pazar2 = false;
  bool pazar3 = false;
  bool pazar4 = false;
  bool pazar5 = false;

  double kutu1 = 0;
  double kutu2 = 0;
  double kutu3 = 0;
  double kutu4 = 0;
  double kutu5 = 0;

  double ttablet1 = 0;
  double ttablet2 = 0;
  double ttablet3 = 0;
  double ttablet4 = 0;
  double ttablet5 = 0;

  double gunluk1 = 0;
  double gunluk2 = 0;
  double gunluk3 = 0;
  double gunluk4 = 0;
  double gunluk5 = 0;

  int newDate = 0;
  int oldDate = 0;

  double ygun1 = 0;
  double ygun2 = 0;
  double ygun3 = 0;
  double ygun4 = 0;
  double ygun5 = 0;

  int ogun1 = 0;
  int ogun2 = 0;
  int ogun3 = 0;
  int ogun4 = 0;
  int ogun5 = 0;

  int ogunt = 0;

  bool date_change1 = false;
  bool date_change2 = false;
  bool date_change3 = false;
  bool date_change4 = false;
  bool date_change5 = false;

  bool med1b = false;
  bool med2b = false;
  bool med3b = false;
  bool med4b = false;
  bool med5b = false;

  var time = DateTime.now(); //Değişken atamaları yapılır.

  void getmed1(
    //Birinci yuva için ilaç bilgileri alıır.
    String? a,
    bool pazar,
    bool s,
    bool c,
    bool per,
    bool cu,
    bool cumar,
    bool pazartesi,
    double kutu,
    double gunluk,
    double ttablet,
  ) {
    med1 = a;

    pazartesi1 = pazartesi;
    sali1 = s;
    carsamba1 = c;
    persembe1 = per;
    cuma1 = cu;
    cumartesi1 = cumar;
    pazar1 = pazar;

    ttablet1 = ttablet;
    gunluk1 = gunluk;
    kutu1 = kutu;
    notifyListeners();
  }

  void getmed2(
    //İkinci yuva için ilaç bilgileri alıır.
    String? a,
    bool pazar,
    bool s,
    bool c,
    bool per,
    bool cu,
    bool cumar,
    bool pazartesi,
    double kutu,
    double gunluk,
    double ttablet,
  ) {
    med2 = a;
    pazartesi2 = pazartesi;
    sali2 = s;
    carsamba2 = c;
    persembe2 = per;
    cuma2 = cu;
    cumartesi2 = cumar;
    pazar2 = pazar;

    ttablet2 = ttablet;
    gunluk2 = gunluk;
    kutu2 = kutu;
    notifyListeners();
  }

  void getmed3(
    //Üçüncü yuva için ilaç bilgileri alıır.
    String? a,
    bool pazar,
    bool s,
    bool c,
    bool per,
    bool cu,
    bool cumar,
    bool pazartesi,
    double kutu,
    double gunluk,
    double ttablet,
  ) {
    med3 = a;
    pazartesi3 = pazartesi;
    sali3 = s;
    carsamba3 = c;
    persembe3 = per;
    cuma3 = cu;
    cumartesi3 = cumar;
    pazar3 = pazar;

    ttablet3 = ttablet;
    gunluk3 = gunluk;
    kutu3 = kutu;
    notifyListeners();
  }

  void getmed4(
    //Dördüncü yuva için ilaç bilgileri alıır.
    String? a,
    bool pazar,
    bool s,
    bool c,
    bool per,
    bool cu,
    bool cumar,
    bool pazartesi,
    double kutu,
    double gunluk,
    double ttablet,
  ) {
    med4 = a;
    pazartesi4 = pazartesi;
    sali4 = s;
    carsamba4 = c;
    persembe4 = per;
    cuma4 = cu;
    cumartesi4 = cumar;
    pazar4 = pazar;

    ttablet4 = ttablet;
    gunluk4 = gunluk;
    kutu4 = kutu;
    notifyListeners();
  }

  void getmed5(
    //Beşinci yuva için ilaç bilgileri alıır.
    String? a,
    bool pazar,
    bool s,
    bool c,
    bool per,
    bool cu,
    bool cumar,
    bool pazartesi,
    double kutu,
    double gunluk,
    double ttablet,
  ) {
    med5 = a;
    pazartesi5 = pazartesi;
    sali5 = s;
    carsamba5 = c;
    persembe5 = per;
    cuma5 = cu;
    cumartesi5 = cumar;
    pazar5 = pazar;

    ttablet5 = ttablet;
    gunluk5 = gunluk;
    kutu5 = kutu;
    notifyListeners();
  }

  void guns1(int a) {
    ogun1 = a;
    notifyListeners();
  }

  void guns2(int a) {
    ogun2 = a;
    notifyListeners();
  }

  void guns3(int a) {
    ogun3 = a;
    notifyListeners();
  }

  void guns4(int a) {
    ogun4 = a;
    notifyListeners();
  }

  void guns5(int a) {
    ogun5 = a;
    notifyListeners();
  }

  void guns6(int b) {
    ogunt = b;
    notifyListeners();
  } //Değişken atamaları yapılır.

  void getDate() {
    newDate = time.day;
    notifyListeners();
  } //Tarih ataması yapılır.

  void dateCv1() {}

  void dateCv2() {}

  void dateCv3() {}

  void dateCv4() {
    datec4 = _mybox.get(103) ?? 0;
    datec4++;
    _mybox.put(103, datec4);
  }

  void dateCv5() {
    datec5 = _mybox.get(104) ?? 0;
    datec5++;
    _mybox.put(104, datec5);
  }

  void compareDate1() {
    datec1 = _mybox.get(100) ?? 0;
    dateNew1 = DateFormat('d').format(now);
    dateOld1 = _mybox.get(200) ?? '0';
    if (dateOld1 != dateNew1 && dateOld1 != '') {
      dateOld1 = dateNew1;
      _mybox.put(200, dateOld1);
      datec1++;
    }
    _mybox.put(100, datec1);
    ogun1 = ogun1 - datec1;
    if (ogun1 < 0) {
      ogun1 = 0;
    }
  } //Birinci ilaç için geçen gün sayısı hesaplanır.

  void compareDate2() {
    datec2 = _mybox.get(101) ?? 0;
    dateNew2 = DateFormat('d').format(now);
    dateOld2 = _mybox.get(201) ?? '0';
    if (dateOld2 != dateNew2 && dateOld2 != '') {
      dateOld2 = dateNew2;
      _mybox.put(201, dateOld2);
      datec2++;
    }
    ogun2 = ogun2 - datec2;
    _mybox.put(101, datec2);
    if (ogun2 < 0) {
      ogun2 = 0;
    }
  } //İkinci ilaç için geçen gün sayısı hesaplanır.

  void compareDate3() {
    datec3 = _mybox.get(102) ?? 0;
    dateNew3 = DateFormat('d').format(now);
    dateOld3 = _mybox.get(202) ?? '0';
    if (dateOld3 != dateNew3 && dateOld3 != '') {
      datec3++;
      dateOld3 = dateNew3;
      _mybox.put(202, dateOld3);
    }
    ogun3 = ogun3 - datec3;
    _mybox.put(102, datec3);
    if (ogun3 < 0) {
      ogun3 = 0;
    }
  } //Üçüncü ilaç için geçen gün sayısı hesaplanır.

  void compareDate4() {
    datec4 = _mybox.get(103) ?? 0;
    dateNew4 = DateFormat('d').format(now);
    dateOld4 = _mybox.get(203) ?? '0';
    if (dateOld4 != dateNew4 && dateOld4 != '') {
      datec4++;
      dateOld4 = dateNew4;
      _mybox.put(203, dateOld4);
    }
    ogun4 = ogun4 - datec4;
    _mybox.put(103, datec4);
    if (ogun4 < 0) {
      ogun4 = 0;
    }
  } //Dördüncü ilaç için geçen gün sayısı hesaplanır.

  void compareDate5() {
    datec5 = _mybox.get(104) ?? 0;
    dateNew5 = DateFormat('d').format(now);
    dateOld5 = _mybox.get(204) ?? '0';
    if (dateOld5 != dateNew5 && dateOld5 != '') {
      dateOld5 = dateNew5;
      _mybox.put(204, dateOld5);
      datec5++;
    }
    ogun5 = ogun5 - datec5;
    _mybox.put(104, datec5);
    if (ogun5 < 0) {
      ogun5 = 0;
    }
  } //Beşinci ilaç için geçen gün sayısı hesaplanır.

  void yenile() {
    notifyListeners();
  } //Ekranın yenilenmesi sağlanır.

  void kaydet1() {
    _mybox.put(1, kutu1);
    _mybox.put(2, gunluk1);
    _mybox.put(3, ttablet1);
    _mybox.put(22, pazartesi1);
    _mybox.put(23, sali1);
    _mybox.put(24, carsamba1);
    _mybox.put(25, persembe1);
    _mybox.put(26, cuma1);
    _mybox.put(27, cumartesi1);
    _mybox.put(28, pazar1);

    notifyListeners();
  } //Birinci ilaç için değerlerin kaydedilmesi sağlanır.

  void kaydet2() {
    _mybox.put(4, kutu2);
    _mybox.put(5, gunluk2);
    _mybox.put(6, ttablet2);
    _mybox.put(29, pazartesi2);
    _mybox.put(30, sali2);
    _mybox.put(31, carsamba2);
    _mybox.put(32, persembe2);
    _mybox.put(33, cuma2);
    _mybox.put(34, cumartesi2);
    _mybox.put(35, pazar2);

    notifyListeners();
  } //İkinci ilaç için değerlerin kaydedilmesi sağlanır.

  void kaydet3() {
    _mybox.put(7, kutu3);
    _mybox.put(8, gunluk3);
    _mybox.put(9, ttablet3);
    _mybox.put(36, pazartesi3);
    _mybox.put(37, sali3);
    _mybox.put(38, carsamba3);
    _mybox.put(39, persembe3);
    _mybox.put(40, cuma3);
    _mybox.put(41, cumartesi3);
    _mybox.put(42, pazar3);

    notifyListeners();
  } //Üçüncü ilaç için değerlerin kaydedilmesi sağlanır.

  void kaydet4() {
    _mybox.put(10, kutu4);
    _mybox.put(11, gunluk4);
    _mybox.put(12, ttablet4);
    _mybox.put(43, pazartesi4);
    _mybox.put(44, sali4);
    _mybox.put(45, carsamba4);
    _mybox.put(46, persembe4);
    _mybox.put(47, cuma4);
    _mybox.put(48, cumartesi4);
    _mybox.put(49, pazar4);

    notifyListeners();
  } //Dördüncü ilaç için değerlerin kaydedilmesi sağlanır.

  void kaydet5() {
    _mybox.put(13, kutu5);
    _mybox.put(14, gunluk5);
    _mybox.put(15, ttablet5);
    _mybox.put(50, pazartesi5);
    _mybox.put(51, sali5);
    _mybox.put(52, carsamba5);
    _mybox.put(53, persembe5);
    _mybox.put(54, cuma5);
    _mybox.put(55, cumartesi5);
    _mybox.put(56, pazar5);

    notifyListeners();
  } //Beşinci ilaç için değerlerin kaydedilmesi sağlanır.

  void reload1() {
    kutu1 = _mybox.get(1) ?? 0;
    gunluk1 = _mybox.get(2) ?? 0;
    ttablet1 = _mybox.get(3) ?? 0;
    pazartesi1 = _mybox.get(22);
    sali1 = _mybox.get(23);
    carsamba1 = _mybox.get(24);
    persembe1 = _mybox.get(25);
    cuma1 = _mybox.get(26);
    cumartesi1 = _mybox.get(27);
    pazar1 = _mybox.get(28);
    notifyListeners();
  } //Birinci ilaç için kaydedilen değerler geri yüklenir.

  void reload2() {
    kutu2 = _mybox.get(4) ?? 0;
    gunluk2 = _mybox.get(5) ?? 0;
    ttablet2 = _mybox.get(6) ?? 0;
    pazartesi2 = _mybox.get(29);
    sali2 = _mybox.get(30);
    carsamba2 = _mybox.get(31);
    persembe2 = _mybox.get(32);
    cuma2 = _mybox.get(33);
    cumartesi2 = _mybox.get(34);
    pazar2 = _mybox.get(35);
    notifyListeners();
  } //İkinci ilaç için kaydedilen değerler geri yüklenir.

  void reload3() {
    kutu3 = _mybox.get(7) ?? 0;
    gunluk3 = _mybox.get(8) ?? 0;
    ttablet3 = _mybox.get(9) ?? 0;
    pazartesi3 = _mybox.get(36);
    sali3 = _mybox.get(37);
    carsamba3 = _mybox.get(38);
    persembe3 = _mybox.get(39);
    cuma3 = _mybox.get(40);
    cumartesi3 = _mybox.get(41);
    pazar3 = _mybox.get(42);
    notifyListeners();
  } //Üçüncü ilaç için kaydedilen değerler geri yüklenir.

  void reload4() {
    kutu4 = _mybox.get(10) ?? 0;
    gunluk4 = _mybox.get(11) ?? 0;
    ttablet4 = _mybox.get(12) ?? 0;
    pazartesi4 = _mybox.get(43);
    sali4 = _mybox.get(44);
    carsamba4 = _mybox.get(45);
    persembe4 = _mybox.get(46);
    cuma4 = _mybox.get(47);
    cumartesi4 = _mybox.get(48);
    pazar4 = _mybox.get(49);
    notifyListeners();
  } //Dördüncü ilaç için kaydedilen değerler geri yüklenir.

  void reload5() {
    kutu5 = _mybox.get(13) ?? 0;
    gunluk5 = _mybox.get(14) ?? 0;
    ttablet5 = _mybox.get(15) ?? 0;
    pazartesi5 = _mybox.get(50);
    sali5 = _mybox.get(51);
    carsamba5 = _mybox.get(52);
    persembe5 = _mybox.get(53);
    cuma5 = _mybox.get(54);
    cumartesi5 = _mybox.get(55);
    pazar5 = _mybox.get(56);
    notifyListeners();
  } //Beşinci ilaç için kaydedilen değerler geri yüklenir.

  void kaydeti1() {
    _mybox.put(60, med1);
    notifyListeners();
  } //Birinci ilacın ismi kaydedilir.

  void kaydeti2() {
    _mybox.put(61, med2);
  } //İkinci ilacın ismi kaydedilir.

  void kaydeti3() {
    _mybox.put(62, med3);
  } //Üçüncü ilacın ismi kaydedilir.

  void kaydeti4() {
    _mybox.put(63, med4);
  } //Dördüncü ilacın ismi kaydedilir.

  void kaydeti5() {
    _mybox.put(64, med5);
  } //Beşinci ilacın ismi kaydedilir.

  void kaydate(double a) {
    _mybox.put(80, a);
  } //Anlık tarihin kaydedilmesi sağlanır.

  void reloadi() {
    med1 = _mybox.get(60);
    med2 = _mybox.get(61);
    med3 = _mybox.get(62);
    med4 = _mybox.get(63);
    med5 = _mybox.get(64);
  } //İlaç isimlerinin geri yüklenmesi sağlanır.

  void alinabilir1(String a) {
    med1str = a;
    notifyListeners();
  } //Değiken atanır.

  void alinabilir2(String a) {
    med2str = a;
    notifyListeners();
  } //Değiken atanır.

  void alinabilir3(String a) {
    med3str = a;
    notifyListeners();
  } //Değiken atanır.

  void alinabilir4(String a) {
    med4str = a;
    notifyListeners();
  } //Değiken atanır.

  void alinabilir5(String a) {
    med5str = a;
    notifyListeners();
  } //Değiken atanır.

  void med1bv(bool a) {
    med1b = a;
  } //Değiken atanır.

  void med2bv(bool a) {
    med2b = a;
  } //Değiken atanır.

  void med3bv(bool a) {
    med3b = a;
  } //Değiken atanır.

  void med4bv(bool a) {
    med4b = a;
  } //Değiken atanır.

  void med5bv(bool a) {
    med5b = a;
  } //Değiken atanır.
}
