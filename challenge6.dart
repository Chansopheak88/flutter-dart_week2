class Distance {
  final double cms;
  Distance(this.cms); //here we use cms as base unit to store

  //when enter another unit like kms adn meter it will convert the value to cms as base unit
  Distance.cms(double value) : this(value);
  Distance.meters(double value) : this(value * 100);
  Distance.kms(double value) : this(value * 100000);

  //use get to convert back the cms unit to other unit
  double get cm => cms;
  double get meters => cms / 100;
  double get kms => cms / 100000;

  Distance operator +(Distance o) {
    return Distance(this.cms + o.cms);
  }
}

void main() {
  Distance d1 = Distance.kms(3.4); //3.4*100000=340000cms
  Distance d2 = Distance.meters(1000); //1000*100=100000cms
  print((d1 + d2).kms);
  print((d1 + d2).meters);
  print((d1 + d2).cm);
}
