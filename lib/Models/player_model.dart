class Player {
  final String name;
  final String position;
  final int number;
  final String? photo; // path asset lokal, mis: assets/players/messi.jpg

  const Player({
    required this.name,
    required this.position,
    required this.number,
    this.photo,
  });

  Player copyWith({
    String? name,
    String? position,
    int? number,
    String? photo,
  }) {
    return Player(
      name: name ?? this.name,
      position: position ?? this.position,
      number: number ?? this.number,
      photo: photo ?? this.photo,
    );
  }

  @override
  String toString() => '$number - $name ($position)';
}
