// abstract day 1

// intinya gini yaa, abstract bisa bikin turunan suatu fungsi ke class turunan, dan itu wajib y di implementasiin 

void main(List<String> args) {
  Mantap mantap = Mantap();
  mantap.mantap('mantap bro');
}

abstract class BelajarAbstract {
  void mantap(String mantapBro); // nih method nya ya
}

class Mantap extends BelajarAbstract {
  @override
  void mantap(String mantapBro) {
    for (var i = 0; i < mantapBro.length; i++) {
      print(mantapBro[i]);
    }
  }
}



// abstract day 2 (udah gila)







// abstract day 3 (sisa nama)

