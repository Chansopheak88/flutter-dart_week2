class Point {
  //make attributes of x and y
  final double x;
  final double y;
  //tell constructor that this is our attribute
  Point({required this.x, required this.y});
  //make method
  Point translate(double dx, double dy) {
    return Point(x: this.x + dx, y: this.y + dy);
  }
}

void main() {
  Point p1 = Point(x: 10.0, y: 20.0);
  print("the x is:${p1.x} the y is:${p1.y}");
  Point translatedP=p1.translate(20.0, 7.3);
  print("the x is:${translatedP.x} the y is:${translatedP.y}");
}
