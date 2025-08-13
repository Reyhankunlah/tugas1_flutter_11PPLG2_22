class Player {
  final String name;
  final String position;
  final int number;

  const Player({
    required this.name,
    required this.position,
    required this.number,
  });

  Player copyWith({String? name, String? position, int? number}) {
    return Player(
      name: name ?? this.name,
      position: position ?? this.position,
      number: number ?? this.number,
    );
  }

  @override
  String toString() => '$number - $name ($position)';
}
