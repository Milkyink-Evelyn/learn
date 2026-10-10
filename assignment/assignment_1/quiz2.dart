class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double area() {
    return width * height;
  }
}

void main() {
  Rectangle a = Rectangle(5, 3);
  Rectangle b = Rectangle(4.5, 2.5);
  
  print("矩形1的面积: ${a.area()}");
  print("矩形2的面积: ${b.area()}");
}