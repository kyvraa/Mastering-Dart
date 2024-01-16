/// right arsitektur...
/// lebih rapih make ginian

class Car {
  AirConditioner airConditioner;
  Radio radio;
  void nyalakanMobil() {}
  void matikanMobil() {}

  Car({required this.airConditioner, required this.radio});
}

class AirConditioner {
  void nyalakanAc() {
    print('ac dinyalakan whussssh....');
  }

  void naikanAc() {
    print('ac di tingkatkan 🥶');
  }

  void turunkanAc() {
    print('ac di turunkan 🥵');
  }
}

class Radio {
  String lagu = 'dudu dudududu';
  void playMusic() {
    print(lagu);
  }

  void stopMusic() {
    print('${lagu = ''} lagu berhasil dimatikan');
  }
}

void main(List<String> args) {
  Car car = Car(airConditioner: AirConditioner(), radio: Radio());
  car.airConditioner.naikanAc();
  car.airConditioner.nyalakanAc();
  car.airConditioner.turunkanAc();
  car.radio.playMusic();
  car.radio.stopMusic();
}


// lebih rapih kan