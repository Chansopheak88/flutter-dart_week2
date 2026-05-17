class Point {
  //make attributes of x and y
  int x = 0;
  int y = 0;
  //tell constructor that this is our attribute
  Point({required this.x, required this.y});
  //make method
  void translate(int dx, int dy) {
    this.x += dx;
    this.y += dy;
  }
}

class Rectangle {
  //a rectangle take 2 point
  Point topLeft = Point(x: 1, y: 3);
  Point btmRight = Point(x: 3, y: 1);


  //class provide area, width, height
  //calculate width first
  int get width {
    return btmRight.x - topLeft.x;
  }

  int get height {
    return topLeft.y - btmRight.y;
  }

  int get area {
    return width * height;
  }
}

void main() {
  Rectangle r = Rectangle();
  r.topLeft.x = 3;
  r.btmRight.x = 10;
  print(r.area);
}
