// Wrong

abstract class HeroAbilitty {
  void heal();
  void castMagic();
  void stealMoney();
}

abstract class Hero implements HeroAbilitty {
  void regularAttack();
}

class Thief extends Hero {
  @override
  void castMagic() {
    // TODO: implement castMagic
  }
  @override
  void heal() {
    // TODO: implement heal
  }
  @override
  void regularAttack() {
    // TODO: implement regularAttack
  }
  @override
  void stealMoney() {
    // TODO: implement stealMoney
  }
}

class WhiteMage extends Hero {
   @override
  void castMagic() {
    // TODO: implement castMagic
  }
  @override
  void heal() {
    // TODO: implement heal
  }
  @override
  void regularAttack() {
    // TODO: implement regularAttack
  }
  @override
  void stealMoney() {
    // TODO: implement stealMoney
  }
}
class BlackMage extends Hero {
   @override
  void castMagic() {
    // TODO: implement castMagic
  }
  @override
  void heal() {
    // TODO: implement heal
  }
  @override
  void regularAttack() {
    // TODO: implement regularAttack
  }
  @override
  void stealMoney() {
    // TODO: implement stealMoney
  }
}