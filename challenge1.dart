class Point {
  //make attributes of x and y
  double x = 0.0;
  double y = 0.0;
  //tell constructor that this is our attribute
  Point({required this.x, required this.y});
  //make method
  void translate(double dx, double dy) {
    this.x += dx;
    this.y += dy;
  }
}

void main() {
  Point p1 = Point(x: 10.0, y: 20.0);
  print("the x is:${p1.x} the y is:${p1.y}");
  p1.translate(20.0, 7.3);
  print("the x is:${p1.x} the y is:${p1.y}");
}
