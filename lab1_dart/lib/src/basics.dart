String describeStudent(String name, {int? age, String? major}) {
  if (age == null && major == null) {
    return name;
  } else if (age != null && major == null) {
    return '$name ($age)';
  } else if (age == null && major != null) {
    return '$name — $major';
  } else {
    return '$name ($age) — $major';
  }
}

String letterGrade(int score) {
  return switch (score) {
    > 100 || < 0 => throw ArgumentError('score must be between 0 and 100'),
    >= 90 => 'A',
    >= 80 => 'B',
    >= 70 => 'C',
    >= 60 => 'D',
    _ => 'F',
  };
}

double average(List<int> scores) {
  if (scores.isEmpty) {
    return 0.0;
  } else {
    final total = scores.fold(0, (sum, score) => sum + score);
    return total / scores.length;
  }
}

List<String> passedStudents(Map<String, int> scores, {int passMark = 60}) {
  return scores.entries
      .where((p) => p.value >= passMark)
      .map((p) => p.key)
      .toList()
    ..sort((a, b) => a.compareTo(b));
}

int Function() makeIdGenerator({int start = 1}) {
  return () {
    final currentId = start;
    start++;
    return currentId;
  };
}
