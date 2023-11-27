// ignore_for_file: unreachable_switch_case

enum Category {
  crossPendant,
  pendant,
  chain,
  earring,
  ring;

  String get id {
  switch (this) {
    case Category.crossPendant:
      return 'Крестик-подвеска';
    case Category.pendant:
      return 'Кулон';
    case Category.chain:
      return 'Цепочка';
    case Category.earring:
      return 'Серьги';
    case Category.ring:
      return 'Кольцо';
  }
}

  String get localizedTitle {
    switch (this) {
      case Category.crossPendant:
        return 'Крестик-подвеска';
      case Category.pendant:
        return 'Кулон';
      case Category.chain:
        return 'Цепочка';
      case Category.earring:
        return 'Серьги';
      case Category.ring:
      return 'Кольцо';
    }
  }

  String get localizedTitlePlural {
    switch (this) {
      case Category.crossPendant:
        return 'Крестик-подвеска';
      case Category.pendant:
        return 'Кулон';
      case Category.chain:
        return 'Цепочка';
      case Category.earring:
        return 'Серьги';
      case Category.ring:
      return 'Кольцо';
    }
  }

  static Category fromString(String id) {
      return Category.values
        .firstWhere((e) => id == id, orElse: () => Category.crossPendant);
  }
}
