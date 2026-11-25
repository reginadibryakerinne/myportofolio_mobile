import 'package:json_annotation/json_annotation.dart';

part 'experience.g.dart';

/// Experience synchronized with the Django REST Framework API.
@JsonSerializable(fieldRename: FieldRename.snake)
class Experience {
  const Experience({
    required this.title,
    required this.description,
    required this.category,
    required this.startedAt,
    this.endedAt,
    this.thumbnail = '',
    this.id,
    this.categoryDisplay = '',
    this.isOngoing = false,
  });

  factory Experience.fromJson(Map<String, dynamic> json) =>
      _$ExperienceFromJson(json);

  @JsonKey(includeToJson: false)
  final String? id;

  final String title;
  final String description;
  final String category;

  @JsonKey(defaultValue: '')
  final String thumbnail;

  final DateTime startedAt;
  final DateTime? endedAt;

  @JsonKey(includeToJson: false, defaultValue: '')
  final String categoryDisplay;

  @JsonKey(includeToJson: false, defaultValue: false)
  final bool isOngoing;

  Map<String, dynamic> toJson() => _$ExperienceToJson(this);
}
