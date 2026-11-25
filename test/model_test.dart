import 'package:flutter_test/flutter_test.dart';
import 'package:myportofolio_mobile/models/experience.dart';

void main() {
  test('Experience.fromJson parses API payload', () {
    final experience = Experience.fromJson({
      'id': 'abc',
      'title': 'Test',
      'description': 'Desc',
      'category': 'internship',
      'started_at': '2026-09-20T12:12:32.813657Z',
      'ended_at': null,
    });

    expect(experience.title, 'Test');
    expect(experience.endedAt, isNull);
  });
}