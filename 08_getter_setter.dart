void main() {
  final mySquare = Squere(side: 10);

  mySquare.side = -5;

  print('Area: ${mySquare.calculateArea()}');
}

class Squere {
  
  double _side; // side * side

  Squere({required double side}) 
  : _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('setting new value $value');
    if (value < 0) throw 'Value must be >= 0';
  }

  double calculateArea() {
    return _side * _side;
  }
}
