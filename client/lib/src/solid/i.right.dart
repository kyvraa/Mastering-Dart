// RIGHT

abstract class Hero {
  void regularAttack();
}

abstract class MagicCaster {
  void castMagic();
}

abstract class Healer {
  void heal();
}

abstract class Stealer {
  void stealMoney();
}

class Thief extends Hero implements Stealer {
  int? jumlahUang;
  int? damage;
  @override
  void regularAttack() {
    print('pencuri memberikan damage sebesar $damage');
  }

  @override
  void stealMoney() {
    print('jumlah uang yang di curi sebesar $jumlahUang');
  }

  Thief({this.jumlahUang, this.damage}) {
    jumlahUang ?? 0;
    damage ?? 0;
  }
}

class WhiteMage extends Hero implements MagicCaster, Healer {
  String jurus;
  int? damage;
  String player;
  double? jumlahHeal;

  WhiteMage(
      {required this.player,
      required this.jurus,
      this.damage,
      this.jumlahHeal}) {
    damage ?? 0;
    jumlahHeal ?? 0;
  }
  @override
  void regularAttack() {
    print('penyihir memberikan damage sebesar $damage');
  }

  @override
  void castMagic() {
    print('penyihir mengunakan skill $jurus');
  }

  @override
  void heal() {
    print(
        'penyihir memberikan heal kepada $player , sebesar ${jumlahHeal!.toInt()}');
  }
}

void main(List<String> args) {
  Thief thief = Thief(jumlahUang: 10000008928820, damage: 1000 * 2);
  thief.stealMoney();
  thief.regularAttack();

  WhiteMage whiteMage = WhiteMage(
      player: 'ririn',
      jurus: 'putaran makanan',
      damage: 919919 * (10 + 100),
      jumlahHeal: 50);
  whiteMage.castMagic();
  whiteMage.heal();
  whiteMage.regularAttack();
}
