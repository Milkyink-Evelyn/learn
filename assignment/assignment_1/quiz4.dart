abstract class Shape {
  double area();
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double area() {
    return side * side;
  }
}

void main() {
  Square square = Square(5);
  
  print("正方形的面积: ${square.area()}");
}