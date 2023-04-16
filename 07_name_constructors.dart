void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Spiderman',
    'power': 'climb walls',
    'isAlive': true
  };

  final ironman = Hero(name: 'Toney Stark', power: 'Money', isAlive: false);

  print(ironman);

  final spiderman = Hero.fromJson(rawJson);
  print(spiderman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No mane found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? 'YES!' : 'No'}';
  }
}
